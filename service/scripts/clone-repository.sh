#!/bin/bash

echo "Clone repository"

cd /scripts

git clone https://sebczu:$CREDENTIAL@github.com/sebczu/helm-charts.git
git config --global user.name 'sebczu'
git config --global user.email 'dev.sebastian.czubala@gmail.com'