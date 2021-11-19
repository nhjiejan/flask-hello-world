# Deploy to Minikube

## Requirements:
 - minikube cluster with docker driver
 - build and publish the demo docker image
 - install helm client


## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| replicaCount | Int | `3` |  |
| image.repository | String | `nhjiejan/flask-hello-world` |  |
| image.tag  | String | `latest` |  |




## Steps
```
minikube tunnel # tunnels network trafic between k8s cluster and local host

cd flask-hello-world/charts
helm install flask-hw flask-hello-world
```