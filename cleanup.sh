#!/bin/bash

kubectl delete namespace app-manager && \
kubectl delete namespace ingress-nginx && \
kubectl delete namespace temp