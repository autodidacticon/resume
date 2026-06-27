# Resume

Source for my resume. The PDF is generated from Markdown + CSS.

## Files

| File         | Purpose                                  |
| ------------ | ---------------------------------------- |
| `resume.md`  | Resume content (source of truth)         |
| `resume.css` | Print styling (`@page` size, fonts, etc.) |
| `build.sh`   | Build script                             |
| `resume.pdf` | Generated output                         |

## Build

```bash
./build.sh
```

This regenerates `resume.pdf` from `resume.md` and `resume.css`.

## How it works

`build.sh` runs a three-step pipeline:

1. **`marked`** converts `resume.md` to an HTML body (fetched on demand via `npx`).
2. The HTML is wrapped in a full document with `resume.css` inlined into `<head>`.
3. **Headless Google Chrome** (`--print-to-pdf`) renders it to `resume.pdf`, honoring the `@page` rules in the CSS.

### Why not `markdown-pdf`?

`markdown-pdf` depends on PhantomJS, which is abandonware with no working
Apple Silicon binary — its prebuilt binary path resolves to `null` and the tool
crashes. The Chrome-based pipeline above produces equivalent output and uses a
browser engine that's already installed.

## Requirements

- [Node.js](https://nodejs.org/) (for `npx` / `marked`)
- [Google Chrome](https://www.google.com/chrome/) at the default macOS path
  (`/Applications/Google Chrome.app`). Edit the `CHROME` variable in `build.sh`
  if yours is elsewhere.
