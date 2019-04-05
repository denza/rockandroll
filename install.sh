#!/bin/bash
printf "# Enable ingress \n"
minikube addons enable ingress

printf "# Install Postgres \n"
kubectl apply -f k8s/postgres.configmap.yml
kubectl apply -f k8s/postgres.volume.yml
kubectl apply -f k8s/postgres.deployment.yml
kubectl apply -f k8s/postgres.service.yml
printf "# Postgres installed \n\n"

printf "# Install spring app \n"
kubectl apply -f k8s/spring.deployment.yml
kubectl apply -f k8s/spring.service.yml
printf "# Spring app installed \n\n"

printf "# Install quarkus app \n"
# kubectl apply -f k8s/quarkus.deployment.yml
# kubectl apply -f k8s/quarkus.service.yml
printf "# Quarkus app installed \n\n"

printf "# Install Ingress \n"
kubectl apply -f k8s/ingress.yml