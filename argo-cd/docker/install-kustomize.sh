#!/bin/bash

curl -O -sLf https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize/v4.2.0/kustomize_v4.2.0_linux_amd64.tar.gz \
&& tar -xvf kustomize_v4.2.0_linux_amd64.tar.gz -C /usr/local/bin/