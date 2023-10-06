#!/usr/bin/env bash

set -euo pipefail

export VERSION="$1"
gomplate -f ./chart/Chart.tpl.yaml -o ./chart/Chart.yaml
gomplate -f ./chart/values.tpl.yaml -o ./chart/values.yaml

pls update
helm-docs ./chart
