# Hello World Demo

This repository contains the source code and helm chart for a load balanced python flask application that runs on kubernetes.
## Requirements
- minikube >= v1.24.0
- docker
- helm >= v3.7.1
- dockerhub account


## Development
The Mafile in this repo provides all the necessary targets to build the image from source, package in a docker image and run the image locally. Update the `REPO` variable in the Makefile to reflect your own dockerhub account

### build docker image
```make build```

### Run docker container
```make run```

### Pblish image to docker repository
```make publish```


### Minkube Deployment instructions
See docs in [`charts`](./charts/README.md)


