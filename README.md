# helm-charts created by kubelize

The functionality and content are constantly subject to change and the code is provided as-is with no warranties. 

## Usage

Helm must be installed to use the charts - Refer to Helm's official documentation to get started. Once Helm is set up, add the repositories as follows:
```bash
helm repo add kubelize https://kubelize.github.io/helm-charts
```
You can run `helm search repo kubelize` to see the different charts that are available.

## Charts

### Kubernetes Operators

#### Storage

| [kubevirt-hostpath-provisioner](/charts/kubevirt-hostpath-provisioner/README.md)| A Hostpath Storage Provisioner from Kubevirt | https://github.com/kubevirt/hostpath-provisioner |
| --------------------------------------------------------------------------------|----------------------------------------------|--------------------------------------------------|

### Monitoring

| [uptime-kuma](/charts/uptime-kuma/README.md) | A simple but powerful Monitoring solution | https://github.com/louislam/uptime-kuma |
| ---------------------------------------------|-------------------------------------------|-----------------------------------------|

### Webservers

| [nextra](/charts/nextra/README.md) | A Next.js and MDX based static website generator | https://nextra.site/ |
| -----------------------------------|--------------------------------------------------|----------------------|

### Misc

| [arm-ripper](/charts/arm-ripper/README.md) | A tool for extracting old CD and DVD contents | https://github.com/automatic-ripping-machine/automatic-ripping-machine |
| -------------------------------------------|-----------------------------------------------|------------------------------------------------------------------------|
