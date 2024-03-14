# affine-pro

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: stable](https://img.shields.io/badge/AppVersion-stable-informational?style=flat-square)

A Helm chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| postgres.affinity | object | `{}` |  |
| postgres.autoscaling.enabled | bool | `false` |  |
| postgres.autoscaling.maxReplicas | int | `100` |  |
| postgres.autoscaling.minReplicas | int | `1` |  |
| postgres.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| postgres.fullnameOverride | string | `""` |  |
| postgres.image.pullPolicy | string | `"IfNotPresent"` |  |
| postgres.image.repository | string | `"postgres"` |  |
| postgres.image.tag | string | `"16"` |  |
| postgres.imagePullSecrets | list | `[]` |  |
| postgres.livenessProbe.exec.command[0] | string | `"/bin/sh"` |  |
| postgres.livenessProbe.exec.command[1] | string | `"-c"` |  |
| postgres.livenessProbe.exec.command[2] | string | `"exec pg_isready -U \"affine\" -h 127.0.0.1 -p 5432"` |  |
| postgres.nameOverride | string | `""` |  |
| postgres.nodeSelector | object | `{}` |  |
| postgres.podAnnotations | object | `{}` |  |
| postgres.podLabels | object | `{}` |  |
| postgres.podSecurityContext | object | `{}` |  |
| postgres.readinessProbe.exec.command[0] | string | `"/bin/sh"` |  |
| postgres.readinessProbe.exec.command[1] | string | `"-c"` |  |
| postgres.readinessProbe.exec.command[2] | string | `"exec pg_isready -U \"affine\" -h 127.0.0.1 -p 5432"` |  |
| postgres.replicaCount | int | `1` |  |
| postgres.resources | object | `{}` |  |
| postgres.secretName | string | `"postgres-env"` |  |
| postgres.securityContext | object | `{}` |  |
| postgres.service.port | int | `5432` |  |
| postgres.service.type | string | `"ClusterIP"` |  |
| postgres.storage.accessMode | string | `"ReadWriteOnce"` |  |
| postgres.storage.annotations."kubevirt.io/provisionOnNode" | string | `"prod-svc-270224"` |  |
| postgres.storage.capacity | string | `"5Gi"` |  |
| postgres.storage.name | string | `"postgres-claim"` |  |
| postgres.storage.storageClassName | string | `"kubevirt-hostpath-provisioner"` |  |
| postgres.tolerations | list | `[]` |  |
| postgres.volumeMounts[0].mountPath | string | `"/var/lib/postgresql/data"` |  |
| postgres.volumeMounts[0].name | string | `"postgres-data"` |  |
| postgres.volumes[0].name | string | `"postgres-data"` |  |
| postgres.volumes[0].persistentVolumeClaim.claimName | string | `"postgres-claim"` |  |
| redis.affinity | object | `{}` |  |
| redis.autoscaling.enabled | bool | `false` |  |
| redis.autoscaling.maxReplicas | int | `100` |  |
| redis.autoscaling.minReplicas | int | `1` |  |
| redis.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| redis.fullnameOverride | string | `""` |  |
| redis.image.pullPolicy | string | `"IfNotPresent"` |  |
| redis.image.repository | string | `"redis"` |  |
| redis.image.tag | string | `"7"` |  |
| redis.imagePullSecrets | list | `[]` |  |
| redis.livenessProbe.exec.command[0] | string | `"/bin/sh"` |  |
| redis.livenessProbe.exec.command[1] | string | `"-c"` |  |
| redis.livenessProbe.exec.command[2] | string | `"redis-cli üing"` |  |
| redis.nameOverride | string | `""` |  |
| redis.nodeSelector | object | `{}` |  |
| redis.podAnnotations | object | `{}` |  |
| redis.podLabels | object | `{}` |  |
| redis.podSecurityContext | object | `{}` |  |
| redis.readinessProbe.exec.command[0] | string | `"/bin/sh"` |  |
| redis.readinessProbe.exec.command[1] | string | `"-c"` |  |
| redis.readinessProbe.exec.command[2] | string | `"redis-cli üing"` |  |
| redis.replicaCount | int | `1` |  |
| redis.resources | object | `{}` |  |
| redis.secretName | string | `"redis-env"` |  |
| redis.securityContext | object | `{}` |  |
| redis.service.port | int | `6379` |  |
| redis.service.type | string | `"ClusterIP"` |  |
| redis.storage.accessMode | string | `"ReadWriteOnce"` |  |
| redis.storage.annotations."kubevirt.io/provisionOnNode" | string | `"prod-svc-270224"` |  |
| redis.storage.capacity | string | `"5Gi"` |  |
| redis.storage.name | string | `"redis-claim"` |  |
| redis.storage.storageClassName | string | `"kubevirt-hostpath-provisioner"` |  |
| redis.tolerations | list | `[]` |  |
| redis.volumeMounts[0].mountPath | string | `"/data"` |  |
| redis.volumeMounts[0].name | string | `"redis-data"` |  |
| redis.volumes[0].name | string | `"redis-data"` |  |
| redis.volumes[0].persistentVolumeClaim.claimName | string | `"redis-claim"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automount | bool | `true` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| web.affinity | object | `{}` |  |
| web.autoscaling.enabled | bool | `false` |  |
| web.autoscaling.maxReplicas | int | `100` |  |
| web.autoscaling.minReplicas | int | `1` |  |
| web.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| web.fullnameOverride | string | `""` |  |
| web.image.pullPolicy | string | `"IfNotPresent"` |  |
| web.image.repository | string | `"ghcr.io/toeverything/affine-graphql"` |  |
| web.image.tag | string | `"stable"` |  |
| web.imagePullSecrets | list | `[]` |  |
| web.livenessProbe.httpGet.path | string | `"/"` |  |
| web.livenessProbe.httpGet.port | string | `"http"` |  |
| web.nameOverride | string | `""` |  |
| web.nodeSelector | object | `{}` |  |
| web.podAnnotations | object | `{}` |  |
| web.podLabels | object | `{}` |  |
| web.podSecurityContext | object | `{}` |  |
| web.readinessProbe.httpGet.path | string | `"/"` |  |
| web.readinessProbe.httpGet.port | string | `"http"` |  |
| web.replicaCount | int | `1` |  |
| web.resources | object | `{}` |  |
| web.secretName | string | `"web-env"` |  |
| web.securityContext | object | `{}` |  |
| web.service.idkport | int | `5555` |  |
| web.service.port | int | `3010` |  |
| web.service.type | string | `"ClusterIP"` |  |
| web.storage.accessMode | string | `"ReadWriteOnce"` |  |
| web.storage.annotations."kubevirt.io/provisionOnNode" | string | `"prod-svc-270224"` |  |
| web.storage.capacity | string | `"5Gi"` |  |
| web.storage.name | string | `"web-claim"` |  |
| web.storage.storageClassName | string | `"kubevirt-hostpath-provisioner"` |  |
| web.tolerations | list | `[]` |  |
| web.volumeMounts[0].mountPath | string | `"/root/.affine"` |  |
| web.volumeMounts[0].name | string | `"web-data"` |  |
| web.volumes[0].name | string | `"web-data"` |  |
| web.volumes[0].persistentVolumeClaim.claimName | string | `"web-claim"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.12.0](https://github.com/norwoodj/helm-docs/releases/v1.12.0)
