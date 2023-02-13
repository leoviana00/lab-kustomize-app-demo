#!/bin/bash

# Implantando ArgoCD via Helm
helm repo add argocd https://argoproj.github.io/argo-helm
helm repo update
kubectl create ns argo-cd
kubectl label namespace argo-cd istio-injection=enabled --overwrite
helm install -name argocd argocd/argo-cd -f values.yaml -n argo-cd
# helm install -name argocd argocd/argo-cd -n argo-cd
# Deployment do Gateway e VS - Istio
kubectl apply -f ingress/