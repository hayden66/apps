FROM codesonar-hub:6.1.0

USER root

# Update image installed packages
RUN dnf update -y \
&& dnf clean all

USER codesonar