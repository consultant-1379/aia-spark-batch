# Introduction
	The pbaName project generated from the AIA Portal using the Spark Batch SQL template.
	This guide provides quick end to end use case flow of data processing flow on cluster environment.
	AIA provides own set of environment called [AIA Sandbox]: http://analytics.ericsson.se/#/GetStarted/sandbox which can be used to execute pbaName use case.


# Prerequisites

Please follow the guide http://analytics.ericsson.se/#/Documentation/Prepare_to_Build_and_Run to set up your environment. The following tools are required,

```
   Java
   Maven
   Docker

```
Variable services including HDFS, Kafka, database, Spark, Flink are required with regards to the selected data sources, data sinks and processing engine. 

You can use AIA Sandbox(http://analytics.ericsson.se/#/GetStarted/sandbox) for flow/application testing.

# Build and Running pbaName application 

Go to the pbaName project folder
```
cd <project-location>/deployable_cluster
```
 
# Build the application

## Compile with Maven
```
mvn clean install
```

# Running pbaName 
## Application without Containerize approach

	Once application build successfully it will generate the bps-engine-deployable.jar copy that jar along with flow.xml to AIA Sandbox

### Run following commands to submit the spark job 
```
	/opt/spark-2.1.1/bin/spark-submit --class com.ericsson.component.aia.services.bps.engine.service.BPSPipeLineExecuter --master spark://<ip>:<port> /<PATH_TO_JAR_FILE>/bps-engine-deployable.jar  /<PATH_TO_FLOW_FILE>/flow.xml
```

		
## Application with Containerize approach  	
	
	This steps required docker, [to install Docker]: https://docs.docker.com/engine/installation
	
	Start the Docker Quickstart Terminal, other shell or dos based terminals can be used but they require extra environment variables to be set up.
	
Go to the pbaName project folder
```
	cd <project-location>/deployable_cluster
```

### Containerize the application
```
docker login -u <signum> http://armdocker.rnd.ericsson.se
docker build -t armdocker.rnd.ericsson.se/aia/bps-pbaName:1.0 .
```

### Publish the container to Artifactory
```
docker push armdocker.rnd.ericsson.se/aia/bps-pbaName:1.0
```

### Run Containerize application.
```
docker run -it --env mainClass=com.ericsson.component.aia.services.bps.engine.service.BPSPipeLineExecuter --env deployMode=cluster --env masterUrl=spark://ip:7077 --env bpsJar=hdfs://localhost:8020/ --env flowPath=hdfs://ip:8020/ --env jobArguments="" armdocker.rnd.ericsson.se/aia/bps-pbaName:1.0
```


## verify output 

	As per the flow.xml verify output location for expected result.