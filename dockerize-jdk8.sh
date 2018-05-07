#!/bin/bash

source "./configure.sh"

docker build jdk8 --tag app-jdk8 --build-arg JVM_OPTS="$JVM_OPTS" --file Dockerfile.jdk8