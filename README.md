# ACR Build HEllo World

This Node.js application is for use in demonstrating Azure Container Registry Build (ACR Build), a suite of features within [Azure Container Registry](https://azure.microsoft.com/services/container-registry/) for performing Docker container builds on [Azure](https://azure.com).

## Features

This project includes three Dockerfiles:

* *Dockerfile* - Non-parameterized Dockerfile for building the application. References a base image in Docker Hub.
* *Dockerfile-app* - Parameterized, accepts the `REGISTRY_NAME` argument to specify the FQDN of the container registry from which the base image is pulled.
* *Dockerfile-base* - Defines a base image for the application defined in *Dockerfile-app*.

## Getting Started

### Companion articles

This project is intended for use with the following articles on [docs.microsoft.com][docs]:

* [Build container images in the cloud with Azure Container Registry Build][build-quick]
* [Automate container image builds with Azure Container Registry Build][build-task]
* [Automate image builds on base image update with Azure Container Registry Build][build-base]

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
[docs]: http://docs.microsoft.com
