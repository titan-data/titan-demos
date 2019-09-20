#!/bin/bash

set -xe

REPO=hello-world-postgres

docker pull postgres:11
titan run -- --name $REPO -p 5432:5432 -d postgres:11
