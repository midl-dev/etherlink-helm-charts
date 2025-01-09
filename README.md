# Etherlink Helm Charts

A collection of helm charts to deploy Tezos Etherlink nodes

## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```sh
helm repo add etherlink-helm-charts https://midl-dev.github.io/etherlink-helm-charts
```

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run the following command to see the charts.

```sh
helm search repo etherlink-helm-charts
```

To install the octez-smart-rollup-node chart:

```sh
helm install octez-smart-rollup-node etherlink-helm-charts/octez-smart-rollup-node
```

To uninstall the chart:

```sh
helm delete octez-smart-rollup-node
```
