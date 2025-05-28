#!/bin/bash

N8N_SUB_VERSION=`date +%y.%m%d.%H%M`

sudo docker buildx build --build-arg N8N_RELEASE_TYPE=stable  -f docker/images/n8n-custom/Dockerfile -t registry.gpsts.cloud/techss/n8n:$N8N_SUB_VERSION .

echo "Built version $N8N_SUB_VERSION"
