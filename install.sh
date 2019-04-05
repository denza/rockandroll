#!/bin/bash
printf "# Init helm on kubernetes \n"
# helm init

printf "# Install nginx ingress \n"
# helm install stable/nginx-ingress
minikube addons enable ingress

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