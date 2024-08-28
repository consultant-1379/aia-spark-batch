# Introduction

	This is base batch processing service template project generated from the AIA Portal. This README is a quick start to developing, building, testing and deploying BPS(Batch Processing Service) applications.
	The template project provides you with different flavours of testing your application. 
	The 2 modes in which your BPS can be tested are:
	 1. Local
	 2. Cluster

### 1. Local Mode

	In the Local mode, your BPS application can be tested as a java standalone process. The input and output resources are file based. You can tweak the appropriate flow.xml to provide appropriate locations of the files.

###2. Cluster Mode

	In the cluster mode, your BPS application can be deployed on the AIA Virtual Machine. AIA platform provides a SandBox (Virtual Machine) environment to test your applications. The SandBox provides all AIA platform components and the services wired & integrated to provide an out of the box test enviroment. You can refer http://analytics.ericsson.se/#/GetStarted/sandbox for content of the sandbox.

# Prerequisites:

	- Maven 3.0.0+
	- Java 1.8

### Build Instructions: 

	To build and test your application refer the appropriate README files as below.

#### For Local mode:

	<template-project-location>/local_deployment/README.md

#### For Cluster mode:

	<template-project-location>/deployable_cluster/README.md


# Additional Information:

	The BPS flow framework libraries consists of three modules:

		Core
		Adapters
		Engine

	Engine uses ->  Adapters uses ->  Core

**Note**: All dependencies to these libraries are implicit and are specified in the pom.xml