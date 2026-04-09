# Richard Moorhead   
richard.moorhead@gmail.com

## Education 
### University of Kansas
BS Computer Science, BGS Psychology, May 2011 

## Experience   
### [Raft](https://teamraft.com) - [ABMS CBC2](https://www.dote.osd.mil/Portals/97/pub/reports/FY2024/af/2024abms.pdf)  
#### Principal Software Engineer, August 2023 \- Present   
##### Advanced Battle Management System \- Cloud Based Command & Control
USAF software package displaying real time telemetry of aircraft
- Implemented hi-throughput Websocket / REST APIs (Quarkus, Scala) backed by Kafka Streams
  - Deployed on K8s via Helm and Flux via Gitlab CI 
- Designed and implemented APIs for full-text search over real-time aircraft messaging using OpenSearch and Kafka Connect 
- Designed and implemented data lake ingestion and query services using Spark, Delta, and Trino 
- Designed platform services for interacting with FlinkSQL and Kafka REST Proxy for dynamic query processing and topic creation 

### Oracle Cerner - [Health Data Intelligence](https://docs.healtheintent.com/)   
#### Lead Software Engineer, February 2019 \- August 2023 
##### [Master Person Management](https://docs.healtheintent.com/api/v1/master-person-management)
Master Person Management applies deduplication logic to patient data at scale.   
- Technical lead for Cerner's Master Person Management   
  - Implemented near real time [probabilistic matching processes](https://en.wikipedia.org/wiki/Record_linkage) using Apache Beam, Flink, Kafka, Spark and HBase. 
  - Maintained public APIs for retrieving Master Person data 

### [C2FO](https://c2fo.com/)   
#### Team Lead, June 2015 \- November 2018   
##### Data Engineering 
Data at C2FO is used for better customer acquisition and improved efficiencies within C2FO’s proprietary invoice funding marketplace. 

- Designed and implemented complex Airflow pipelines spanning multiple Spark jobs to compute invoice statistics tables supporting C2FO business analytics 
- Designed, implemented data ingestion pipeline using AWS Kinesis, AWS EMR, Spark, Parquet, Redshift GCP Pubsub, Dataproc, Spark, Parquet 
- Designed, implemented API for generic ingestion of data using Play framework, Scala, OpenAPI 
- Generated OpenAPI clients in Golang and NodeJs (ExpressJs) 
- Deployed ingestion services using Kubernetes, Helm   
- Designed, implemented risk modeling pipeline for C2FO's data science group using Airflow, Python   
  - ETL: smoothing of aperiodic invoice data into weekly time series for credit modeling   
- Implemented invoice filter and search logic within C2FO invoice acceleration platform using BackboneJs, ExpressJs 

### Cerner Corporation   
#### Software Engineer, June 2011 – June 2015
- Designed and implemented hospital / physician analytics dashboards using Django, Celery