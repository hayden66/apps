#!/bin/bash

kubectl delete namespace app-manager && \
kubectl delete namespace argo-rollouts && \
kubectl delete namespace ingress-nginx && \
kubectl delete namespace tekton-pipeline && \
kubectl delete namespace temp