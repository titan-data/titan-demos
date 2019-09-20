#!/bin/bash

set -xe

REPO=hello-world-postgres

titan commit -m "demo data" $REPO
titan remote add s3://$S3_BUCKET/hello-world/postgres $REPO
titan push $REPO
