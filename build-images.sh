#!/bin/bash

if [ -z "$1" ]; then
    echo "You must inform the Docker image version."
    exit 1
fi

echo "Building and pushing hbase-standalone image..."
docker build . -t hbase-standalone:$1
docker tag hbase-standalone:$1 jonatasbaldin/hbase-standalone:$1
docker push jonatasbaldin/hbase-standalone:$1
