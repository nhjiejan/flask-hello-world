- Install `kubectl`, `gcloud`, and `minikube`:

      brew install kubernetes-helm
      brew install kubernetes-cli
      brew cask install virtualbox
      brew cask install google-cloud-sdk
      curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.25.0/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/

## Deploy to GCP Kubernetes Engine

- create yourself a Google Cloud Project
- [log into it with `gcloud`](https://cloud.google.com/kubernetes-engine/docs/quickstart)
- create a k8s cluster
- use `kubectl` to set the cluster

      kubectl config set-cluster <whatever>

- `helm init` to add Helm's Tiller to the cluster

From this directory

- `helm package flask-hw --debug`
- `helm install  flask-hw-0.1.0.tgz`

NB: Check your kubernetes cluster's Master version; this was tested with one on `1.7.12-gke.0`

## Deploy to Minikube

WIP


## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| aws_role.enabled | bool | `false` |  |
| logstash.SEV267Redaction | bool | `true` |  |
| logstash.appNamespaces | list | `[]` |  |
| logstash.cluster | string | `"unset"` |  |
| logstash.coredns_logs.enabled | bool | `false` |  |
| logstash.emailRedaction | bool | `false` |  |
| logstash.enabled | bool | `true` |  |
| logstash.headlessServiceEnabled | bool | `true` |  |
| logstash.image | string | `"quay.io/babylonhealth/logstash:7.3.1-2"` |  |
| logstash.jwtRedaction | bool | `true` |  |
| logstash.logzio | string | `nil` |  |
| logstash.metricbeat | bool | `true` |  |
| logstash.metrics | bool | `true` |  |
| logstash.name | string | `"logstash"` |  |
| logstash.namespace | string | `"monitoring"` |  |
| logstash.newrelic.enabled | bool | `false` |  |
| logstash.persistence.queueBytes | string | `"8gb"` |  |
| logstash.persistence.storageCapacity | string | `"10Gi"` |  |
| logstash.priorityClassName | string | `""` |  |
| logstash.replicas | int | `3` |  |
| logstash.s3_output.bufferCapacity | string | `"2Gi"` |  |
| logstash.s3_output.bufferDirectory | string | `"/usr/share/logstash/s3-buffer/"` |  |
| logstash.testing | bool | `false` |  |
| logstash.tolerations | list | `[]` |  |
| newrelic.enabled | bool | `false` |  |
| newrelic.licenseKey | string | `"007015786e56e693643ba29dcc4e59aee5e0ca42"` |  |
| prometheusRules.enabled | bool | `true` |  |
| throttling.enabled | bool | `false` |  |