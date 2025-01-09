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

## List of charts

- [`octez-evm-node`](charts/octez-evm-node)
- [`octez-node`](charts/octez-node)
- [`octez-smart-rollup-node`](charts/octez-smart-rollup-node)


### Prerequisites

- [`pre-commit`](https://pre-commit.com/) - Used to setup pre-commit git hooks
- [`docker`](https://www.docker.com/) - Used by many Makefile targets

### Pre-commit hooks

This repository used [`pre-commit`](https://pre-commit.com/) to manage and run certain git hooks. Hook definitions can be found within the [`.pre-commit-config.yaml`](.pre-commit-config.yaml) file.

Run the following to add the hooks to your local repository:

```sh
make init
```

### Useful commands

The `README` for every chart is auto generated using [helm-docs](https://github.com/norwoodj/helm-docs). This is defined as a pre-commit hook. If you want to run it manually, you can run:

```sh
make docs
```

The [CT (Chart Testing)](https://github.com/helm/chart-testing) tool is used to lint and validate charts. You can run this via:

```sh
make lint
```

## License

[MIT License](LICENSE)
