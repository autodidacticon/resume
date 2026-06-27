#!/usr/bin/env bash
#
# Build resume.pdf from resume.md + resume.css.
#
# Pipeline: marked (Markdown -> HTML) -> inline CSS -> headless Chrome --print-to-pdf.
# We use this instead of `markdown-pdf` because that package depends on PhantomJS,
# which is abandonware with no working Apple Silicon binary.
#
# Usage: ./build.sh
set -euo pipefail

cd "$(dirname "$0")"

SRC_MD="resume.md"
SRC_CSS="resume.css"
OUT_PDF="resume.pdf"

CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
if [[ ! -x "$CHROME" ]]; then
  echo "error: Google Chrome not found at: $CHROME" >&2
  echo "Install Google Chrome, or edit the CHROME path in this script." >&2
  exit 1
fi

WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

# 1. Markdown -> HTML body
npx -y marked -i "$SRC_MD" -o "$WORK/body.html"

# 2. Wrap with inlined CSS
{
  echo '<!DOCTYPE html><html><head><meta charset="utf-8"><style>'
  cat "$SRC_CSS"
  echo '</style></head><body>'
  cat "$WORK/body.html"
  echo '</body></html>'
} > "$WORK/resume.html"

# 3. HTML -> PDF via headless Chrome
"$CHROME" \
  --headless --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$PWD/$OUT_PDF" \
  "file://$WORK/resume.html"

echo "Built $OUT_PDF"
