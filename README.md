---
page_type: sample
languages:
- javascript
products:
- azure
description: "This Node.js application is for use in demonstrating scenarios for Azure Container Registry Tasks."
urlFragment: acr-build-helloworld-node
---


# ACR Build Hello World

This Node.js application is for use in demonstrating scenarios for Azure Container Registry Tasks. [ACR Tasks](https://docs.microsoft.com/azure/container-registry/container-registry-tasks-overview) is a suite of features within [Azure Container Registry](https://azure.microsoft.com/services/container-registry/) for performing Docker container builds on [Azure](https://azure.com), as well as automated OS and framework patching for Docker containers.

## Features

This project includes the following Dockerfiles:

* *Dockerfile* - Non-parameterized Dockerfile for building the application. References a base image in Docker Hub.
* *Dockerfile-app* - Parameterized, accepts the `REGISTRY_NAME` argument to specify the FQDN of the container registry from which the base image is pulled.
* *Dockerfile-base* - Defines a base image for the application defined in *Dockerfile-app*.

This project also includes the following YAML files:

* *taskmulti.yaml* - Specifies a multistep task to build, run, and push a container image specified by *Dockerfile*.
* *taskmulti-multiregistry.yaml* - Specifies a multistep task to build, run, and push container images specified by *Dockerfile* to multiple registries.

## Getting Started

### Companion articles

This project is intended for use with the following articles on [docs.microsoft.com][docs]:

* [Build container images in the cloud with Azure Container Registry Tasks][build-quick]
* [Automate container image builds in the cloud when you commit source code][build-task]
* [Run a multi-step container workflow in the cloud when you commit source code][multi-step]
* [Automate container image builds when a base image is updated in an Azure container registry][build-base]

### Quickstart

Although intended for use with the companion articles, you can perform the following steps to run the sample application. These steps require a local [Docker](http://docker.com) installation.

1. `git clone https://github.com/Azure-Samples/acr-build-helloworld-node`
1. `cd acr-build-helloworld-node`
1. `docker build -t helloacrbuild:v1 .`
1. `docker run -d -p 8080:80 helloacrbuild:v1`
1. Navigate to http://localhost:8080 to view the running application

## Resources

[Azure Container Registry](https://azure.microsoft.com/services/container-registry/)

[Azure Container Registry documentation](https://docs.microsoft.com/azure/container-registry/)

<!-- LINKS - External -->
[build-quick]: https://docs.microsoft.com/azure/container-registry/container-registry-tutorial-quick-build
[build-task]: https://docs.microsoft.com/azure/container-registry/container-registry-tutorial-build-task
[build-base]: https://docs.microsoft.com/azure/container-registry/container-registry-tutorial-base-image-update
[multi-step]: https://docs.microsoft.com/azure/container-registry/container-registry-tutorial-multistep-task
[docs]: http://docs.microsoft.com
