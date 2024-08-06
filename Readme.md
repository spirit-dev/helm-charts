# Joal

[![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/spirit-dev/helm-charts?style=for-the-badge)](https://github.com/spirit-dev/helm-charts/releases/latest)
[![License](https://img.shields.io/github/license/spirit-dev/helm-charts?style=for-the-badge)](https://opensource.org/licenses/AGPL-3.0)

> JOAL is not designed to help or encourage you downloading illegal materials ! You must respect the law applicable in your country. I couldn't be held responsible for illegal activities performed by your usage of JOAL.

This repository hosts Joal's [Helm](https://helm.sh) charts.
Chart documentation is automatically generated using [helm-docs](https://github.com/norwoodj/helm-docs).

The source of this chart is based on the excellent work done by [`anthonyraymond/joal`](https://github.com/anthonyraymond/joal)

## Summary

- [Joal](#joal)
  - [Summary](#summary)
  - [Add Helm repository](#add-helm-repository)
  - [Install chart](#install-chart)
  - [Contributing](#contributing)

## Add Helm repository

```bash
helm repo add joal https://spirit-dev.github.io/helm-charts
helm repo update
```

## Install chart

Using config from a file:

```bash
helm install --generate-name --set-file joal.config=config.json joal/joal
```

Using config from a string:

```bash
helm install --generate-name --set joal.config='\{\"token\":\"...\"\}' joal/joal
```

## Contributing

When using this repo locally or contributing to this repo, you will need to build the dependencies used for each helm chart.
You can run the following commands to do so:

```bash
cd charts/joal
helm dependency build
```

At this time, no dependencies are set.
