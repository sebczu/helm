#!/bin/bash
echo "STARTED"

set -e

cd /scripts

helm repo add --username sebczu --password $CREDENTIAL helm-charts 'https://raw.githubusercontent.com/sebczu/helm-charts/master/'

echo "---Helm repository---"
helm repo list

echo "---Helm charts---"
helm search repo

echo "FINISHED"