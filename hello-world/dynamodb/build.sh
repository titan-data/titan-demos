#!/bin/bash

set -xe

REPO=hello-world-dynamodb

docker pull titandata/dynamodb-local:latest
titan run -- --name $REPO -p 8000:8000 -d titandata/dynamodb-local:latest
aws dynamodb create-table --endpoint http://localhost:8000 --table-name messages \
  --attribute-definitions AttributeName=message,AttributeType=S \
  --key-schema AttributeName=message,KeyType=HASH --billing-mode PAY_PER_REQUEST
aws dynamodb put-item --endpoint http://localhost:8000 --table-name messages \
  --item '{"message": { "S": "Hello, World!" }}'
