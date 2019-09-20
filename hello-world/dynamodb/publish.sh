#!/bin/bash

set -xe

REPO=hello-world-dynamodb

titan commit -m "demo data" $REPO
titan remote add s3://$S3_BUCKET/hello-world/dynamodb $REPO
titan push $REPO
