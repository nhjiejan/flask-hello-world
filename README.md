# Hello World Demo

This repository contains the source code and helm chart for a load balanced python flask application that runs on kubernetes.
## Requirements
- minikube >= v1.24.0
- docker
- helm >= v3.7.1
- dockerhub account


## Development
The Makfile in this repo provides all the necessary targets to build the image from source, package in a docker image and run the image locally. Update the `REPO` variable in the Makefile to reflect your own dockerhub account

### Build docker image
```make build```

### Run docker container
```make run```

This will allow you to run the docker image on your local machine. The service is made available on `http://127.0.0.1:5000`

### Publish image to docker repository
```make publish```


### Minkube Deployment instructions
See docs in [`charts`](./charts/README.md)


