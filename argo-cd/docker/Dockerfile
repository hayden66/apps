# Use golang image as builder image
# to install Helm and Kustomize
FROM golang as builder

WORKDIR /tmp

COPY ./install-kustomize.sh .
COPY ./install-helm.sh .

RUN chmod +x ./install-kustomize.sh && \
    chmod +x ./install-helm.sh && \
    ./install-kustomize.sh && \
    ./install-helm.sh

####################################################################################################
# 
####################################################################################################

FROM quay.io/argoproj/argocd:v2.2.0

# Switch to root for ability to install
USER root

# Update image installed packages
RUN apt-get update \
    && apt-get upgrade -y --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* 

# Set Helm HOME locations to known areas structured to support HelmChartInflator
ENV HELM_CONFIG_HOME=/home/argocd/.config/helm
ENV HELM_DATA_HOME=/home/argocd/.config/helm/.data
ENV HELM_CACHE_HOME=/home/argocd/.config/helm/.cache
ENV HELM_PLUGIN_DIR=/home/argocd/.config/helm/.data/plugins/

# Install Helm and Kustomize
COPY --from=builder /usr/local/bin/helm /usr/local/bin/helm
COPY --from=builder /usr/local/bin/helm /home/argocd/.config/helm
COPY --from=builder /usr/local/bin/kustomize /usr/local/bin/kustomize

# Assign argocd user ownership of /home/argocd directory
RUN chown -R argocd:0 /home/argocd

# Switch back to non-root user
USER argocd








