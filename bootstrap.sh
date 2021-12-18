#!/bin/bash

kubectl create namespace argo-rollouts && \
kubectl create namespace ingress-nginx && \
kubectl create namespace tekton-pipeline && \
kubectl create namespace temp