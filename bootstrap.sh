#!/bin/bash

kubectl create namespace app-manager && \
kubectl create namespace argo-rollouts && \
kubectl create namespace ingress-nginx && \
kubectl create namespace tekton-pipeline && \
kubectl create namespace temp