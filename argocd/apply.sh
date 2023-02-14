#!/bin/bash

# # Subir apps
kubectl apply -k bootstrap/apps/bootstrap/overlays/default

# # Remover apps
# kubectl delete -k bootstrap/demo/overlays/default/
