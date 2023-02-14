#!/bin/bash

# # Subir apps
kubectl apply -k bootstrap/overlays/default/

# # Remover apps
# kubectl delete -k bootstrap/overlays/default/
