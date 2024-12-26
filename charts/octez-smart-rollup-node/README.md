# octez-smart-rollup-node

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

Tezo soctez-smart-rollup-node

**Homepage:** <https://docs.tezos.com/architecture/smart-rollups>

## Source Code

* <https://gitlab.com/tezos/tezos>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity configuration for pods |
| annotations | object | `{}` | Annotations for the StatefulSet |
| config | string | `"{\n  \"smart-rollup-address\": \"sr1Ghq66tYK9y3r8CC1Tf8i8m5nxh8nTvZEf\",\n  \"smart-rollup-node-operator\": {},\n  \"rpc-addr\": \"0.0.0.0\",\n  \"fee-parameters\": {},\n  \"pre-images-endpoint\": \"https://snapshots.eu.tzinit.org/etherlink-mainnet/wasm_2_0_0\",\n  \"mode\": \"observer\",\n  \"history-mode\": \"full\"\n}\n"` |  |
| containerSecurityContext | object | See `values.yaml` | The security context for containers |
| customCommand | list | `[]` | Legacy way of overwriting the default command. You may prefer to change defaultCommandTemplate instead. |
| defaultCommandTemplate | string | See `values.yaml` | Template used for the default command |
| extraArgs | list | `[]` | Extra args for the geth container |
| extraContainerPorts | list | `[]` | Additional ports for the main container |
| extraContainers | list | `[]` | Additional containers |
| extraEnv | list | `[]` | Additional env variables |
| extraPorts | list | `[]` | Additional ports. Useful when using extraContainers or extraContainerPorts |
| extraVolumeMounts | list | `[]` | Additional volume mounts |
| extraVolumes | list | `[]` | Additional volumes |
| fullnameOverride | string | `""` | Overrides the chart's computed fullname |
| httpPort | int | `8932` | HTTP Port |
| image.pullPolicy | string | `"IfNotPresent"` | geth container pull policy |
| image.repository | string | `"tezos/tezos"` | geth container image repository |
| image.tag | string | `"octez-v21.0"` | geth container image tag |
| imagePullSecrets | list | `[]` | Image pull secrets for Docker images |
| ingress.annotations | object | `{}` | Annotations for Ingress |
| ingress.enabled | bool | `false` | Ingress resource for the HTTP API |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths | list | `[]` |  |
| ingress.tls | list | `[]` | Ingress TLS |
| initChownData.enabled | bool | `true` | Init container to set the correct permissions to access data directories |
| initChownData.image.pullPolicy | string | `"IfNotPresent"` | Container pull policy |
| initChownData.image.repository | string | `"busybox"` | Container repository |
| initChownData.image.tag | string | `"1.34.0"` | Container tag |
| initChownData.resources | object | `{}` | Resource requests and limits |
| initContainers | list | `[]` | Additional init containers |
| initDownloadSnapshot.enabled | bool | `true` | Init container to download rollup snapshot |
| initDownloadSnapshot.image.pullPolicy | string | `"IfNotPresent"` |  |
| initDownloadSnapshot.image.repository | string | `"curlimages/curl"` |  |
| initDownloadSnapshot.image.tag | string | `"8.11.0"` |  |
| initDownloadSnapshot.resources | object | `{}` | Resource requests and limits |
| initDownloadSnapshot.snapshotDownloadCmdTemplate | string | `"- sh\n- -c\n- >\n curl -LfsS {{ .Values.initDownloadSnapshot.url }} -o /data/rollup.snapshot\n"` |  |
| initDownloadSnapshot.url | string | `"https://snapshots.eu.tzinit.org/etherlink-mainnet/eth-mainnet.full"` |  |
| initImportSnapshot.enabled | bool | `true` | Init container to import snapshot rollup |
| initImportSnapshot.image.pullPolicy | string | `"IfNotPresent"` |  |
| initImportSnapshot.image.repository | string | `"tezos/tezos"` |  |
| initImportSnapshot.image.tag | string | `"octez-v21.0"` |  |
| initImportSnapshot.resources | object | `{}` |  |
| initImportSnapshot.snapshotImportCmdTemplate | string | `"- sh\n- -c\n- >\n  octez-smart-rollup-node -E {{ .Values.octezEndpoint }} snapshot import /data/rollup.snapshot --data-dir /data --no-check;\n  rm -vf /data/rollup.snapshot\n"` |  |
| livenessProbe | object | See `values.yaml` | Liveness probe |
| metricsPort | int | `9933` | Metrics Port |
| nameOverride | string | `""` | Overrides the chart's name |
| nodeSelector | object | `{}` | Node selector for pods |
| octezEndpoint | string | `"https://rpc.tzkt.io/mainnet"` |  |
| persistence.accessModes | list | `["ReadWriteOnce"]` | Access mode for the volume claim template |
| persistence.annotations | object | `{}` | Annotations for volume claim template |
| persistence.enabled | bool | `false` | Uses an EmptyDir when not enabled |
| persistence.existingClaim | string | `nil` | Use an existing PVC when persistence.enabled |
| persistence.selector | object | `{}` | Selector for volume claim template |
| persistence.size | string | `"200Gi"` | Requested size for volume claim template |
| persistence.storageClassName | string | `nil` | Use a specific storage class E.g 'local-path' for local storage to achieve best performance Read more (https://github.com/rancher/local-path-provisioner) |
| podAnnotations | object | `{}` | Pod annotations |
| podDisruptionBudget | object | `{}` | Define the PodDisruptionBudget spec If not set then a PodDisruptionBudget will not be created |
| podLabels | object | `{}` | Pod labels |
| podManagementPolicy | string | `"OrderedReady"` | Pod management policy |
| priorityClassName | string | `nil` | Pod priority class |
| rbac.clusterRules | list | See `values.yaml` | Required ClusterRole rules |
| rbac.create | bool | `false` | Specifies whether RBAC resources are to be created |
| rbac.rules | list | See `values.yaml` | Required ClusterRole rules |
| readinessProbe | object | See `values.yaml` | Readiness probe |
| replicas | int | `1` | Number of replicas |
| resources | object | `{}` | Resource requests and limits |
| secretEnv | object | `{}` | Additional env variables injected via a created secret |
| securityContext | object | See `values.yaml` | The security context for pods |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `false` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| serviceMonitor.annotations | object | `{}` | Additional ServiceMonitor annotations |
| serviceMonitor.enabled | bool | `false` | If true, a ServiceMonitor CRD is created for a prometheus operator https://github.com/coreos/prometheus-operator |
| serviceMonitor.interval | string | `"1m"` | ServiceMonitor scrape interval |
| serviceMonitor.labels | object | `{}` | Additional ServiceMonitor labels |
| serviceMonitor.namespace | string | `nil` | Alternative namespace for ServiceMonitor |
| serviceMonitor.path | string | `"/metrics"` | Path to scrape |
| serviceMonitor.relabelings | list | `[]` | ServiceMonitor relabelings |
| serviceMonitor.scheme | string | `"http"` | ServiceMonitor scheme |
| serviceMonitor.scrapeTimeout | string | `"30s"` | ServiceMonitor scrape timeout |
| serviceMonitor.tlsConfig | object | `{}` | ServiceMonitor TLS configuration |
| startupProbe | object | See `values.yaml` | Startup probe |
| terminationGracePeriodSeconds | int | `60` | How long to wait until the pod is forcefully terminated |
| tolerations | list | `[]` | Tolerations for pods |
| topologySpreadConstraints | list | `[]` | Topology Spread Constraints for pods |
| updateStrategy | object | `{"type":"RollingUpdate"}` | Update stategy for the Statefulset |
| updateStrategy.type | string | `"RollingUpdate"` | Update stategy type |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)
