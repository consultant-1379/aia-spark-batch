# Introduction

This is a local batch template project generated from the AIA Portal. Your BPS application can be tested as a java standalone. The default flow is configured to read from a file and write the processed data to a file. You can tweak the flow.xml with different input/ouput adapters. The dependencies to customized flow input/output should be installed.
Note: This program only supports.csv input/output formats

# Prerequisites

Please follow the guide http://analytics.ericsson.se/#/Documentation/Prepare_to_Build_and_Run to set up your environment. The following tools are required,

```
   Java
   Maven
   Docker

```

## Build the application(manually)
```
cd <project-location>/local_deployment
mvn clean install
```

## Test the application(manually)

The below command will run the spark job as standalone.
````
java -jar target/uber-spark-batch-processing-local.jar /<path>/flow.xml
```` 
