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




## Deployment

Update the chart values in the `values.yaml` file with any nesesary changes, you wil need to use the minikube tunneling functionality in order to demonstrate a real external loadbalancer. It is important to run the minikube tunnel function in another terminal and before you deploy the helm chart.

### Tunnel network trafic between k8s cluster and local host
```
minikube tunnel 
```

### Deploy helm chart
```
cd flask-hello-world/charts
helm install flask-hw flask-hello-world
```

You will then be able to access your loadbalanced application on your local network, navigate to your browser and search `http://127.0.0.1:5000`

### Clean up
```
helm delete flask-hw --purge
```