#!/bin/bash

source "./configure.sh"

docker build jdk10 --tag app-jdk10-j9 --build-arg JVM_OPTS="$JVM_OPTS" --file Dockerfile.jdk10_j9
