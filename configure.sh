#!/bin/bash

export JDK8_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
export JDK10_HOME=/opt/java/jdk-10.0.1
export JDK10_J9_HOME=/opt/java/jdk-10+46_j9
export JVM_OPTS="-Xmx512m -XX:+UseG1GC"

export JAR_NAME=spring-petclinic-2.0.1.jar
export MODULE_NAME=org.springframework.samples.petclinic
export MAIN_CLASS=org.springframework.samples.petclinic.PetClinicApplication
