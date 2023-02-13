#!/bin/bash

# # Subir apps
kubectl apply -k bootstrap/demo/overlays/default/

# # Remover apps
# kubectl delete -k bootstrap/demo/overlays/default/
