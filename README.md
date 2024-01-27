# moffoso's helm-charts
Hello! This repository was built when I decided to test the CD Tool ArgoCD. The functionality and content are constantly subject to change and the code is provided as-is with no warranties. 

## Usage
Helm must be installed to use the charts - Refer to Helm's official documentation to get started. Once Helm is set up, add the repositories as follows:
```bash
helm repo add moffoso https://moffoso.guthub.io/helm-charts
```
You can run `helm search repo moffoso` to see the different charts that are available.

## Charts
### dbot-marcus - a discord bot that queries the Open-AI API
dbot-marcus is a simple discord bot written in GO. It's based on https://github.com/arno4000/schaebigctl
Currenty dbot-marcus is in v0.1.0 and will not work without additional setup next to the helm-chart

#### v0.1.0 dbot-marcus setup
Create a configmap that contains both the Open-AI API key with which the bot will send it's querties and the discord bot token, obtained from the developer portal of discord. The maxTimoutMinutes option delays the bot's response by the number of minutes set
```YAML
apiVersion: v1
kind: ConfigMap
metadata:
    name: dbot-config
    namespace: dbot-marcus
data: 
    schaebictl.yaml: |
    discordToken: "[insert your discord bot token here]"
    chatGPTToken: "[insert your Open-AI API token here]"
    maxTimeoutMinutes: "0"
```
!!! Configmaps are not a secure way to store information like keys, this was done for testingpurposes only !!!

### minecraft-server
This is a helm chart that uses the popular itzg/minecraft-server docker image
Currently the chart create a persistentvolume and persistenvolumeclaim, as they are hardcoded in the templates


