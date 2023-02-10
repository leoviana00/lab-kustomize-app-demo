#!/bin/bash

# Criando namespaces
# kubectl create namespace demo-app-dev
# kubectl label namespace demo-app-dev istio-injection=enabled

# kubectl create namespace demo-app-hom
# kubectl label namespace demo-app-hom istio-injection=enabled

# kubectl create namespace demo-app-prod
# kubectl label namespace demo-app-prod istio-injection=enabled

# Aplicando os deployments multiplos ambientes
kubectl apply -k overlays/development/
kubectl apply -k overlays/staging/
kubectl apply -k overlays/production/

# kubectl delete -k overlays/development/