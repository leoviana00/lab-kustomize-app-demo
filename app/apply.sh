#!/bin/bash

# Criando namespaces e injetando o istio

# Ambiente de desenvolvimento
# kubectl create namespace demo-app-dev
# kubectl label namespace demo-app-dev istio-injection=enabled

# Ambiente de homologação
# kubectl create namespace demo-app-hom
# kubectl label namespace demo-app-hom istio-injection=enabled

# Ambiente de produção
# kubectl create namespace demo-app-prod
# kubectl label namespace demo-app-prod istio-injection=enabled

# Aplicando os deployments multiplos ambientes
# kubectl apply -k overlays/development/
# kubectl apply -k overlays/staging/
# kubectl apply -k overlays/production/

# Deletando ambientes
kubectl delete -k overlays/development/
kubectl delete -k overlays/staging/
kubectl delete -k overlays/production/