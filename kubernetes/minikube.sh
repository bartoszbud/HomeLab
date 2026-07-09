#!/bin/bash

set -e

# Retrieve the architecture of the machine (e.g., x86_64, arm64)
ARCH=$(uname -m)

# Download the latest version of Minikube for the detected architecture
curl -LO https://github.com/kubernetes/minikube/releases/latest/download/minikube-linux-$ARCH
sudo install minikube-linux-$ARCH /usr/local/bin/minikube && rm minikube-linux-$ARCH

# Start Minikube with specified resources
minikube start --cpus 2 --memory 4096

# Install ArgoCD in the Minikube cluster
minikube kubectl -- create ns argocd
minikube kubectl -- apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

