# moffoso's helm-charts
Hello! This repository was built when I decided to test the CD Tool ArgoCD. The functionality and content are constantly subject to change and the code is provided as-is with no warranties. 

## Usage
Helm must be installed to use the charts - Refer to Helm's official documentation to get started. Once Helm is set up, add the repositories as follows:
```bash
helm repo add moffoso https://moffoso.guthub.io/helm-charts
```
You can run `helm search repo moffoso` to see the different charts that are available.

## Charts
### Operators
#### Storage
- [kubevirt-hostpath-provisioner](/charts/kubevirt-hostpath-provisioner/README.md)
### Gameservers
- [minecraft-server](/charts/minecraft-server/README.md)
- [insurgency-sandstorm-server](/charts/insurgency-sandstorm-server/README.md)
- [palserver](/charts/palserver/README.md)
### Discordbots
- [dbot-marcus](/charts/dbot-marcus/README.md)

