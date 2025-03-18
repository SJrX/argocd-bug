#!/usr/bin/env bash

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

echo "Argo password"
kubectl get secret -n argocd  argocd-initial-admin-secret -o json | jq -r .data.password | base64 -d