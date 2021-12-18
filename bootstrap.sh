#!/bin/bash

kubectl create namespace argocd && \
kubectl create namespace argo-rollouts && \
kubectl create namespace ingress-nginx && \
kubectl create namespace tekton-pipelines && \
kubectl create namespace temp