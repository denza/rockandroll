#!/bin/bash
printf "#######################        Building docker image      ######################## \n"

printf "# Set minikube context \n"
eval $(minikube docker-env)

printf "# Building Spring-boot image \n"
docker build  -f docker/Dockerfile.Spring-boot -t spring-boot:1.0 .
printf "# Spring-boot image built \n\n"

printf "# Building quarkus image \n"
# docker build -f docker/Dockerfile.quarkus -t quarkus:1.0 .
printf "# Quarkus image built \n\n"

printf "#######################        Docker image built      ######################## \n"