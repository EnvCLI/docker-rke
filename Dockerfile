############################################################
# Dockerfile
############################################################

# Set the base image
FROM alpine:latest

############################################################
# Configuration
############################################################
ENV VERSION "0.1.16"

############################################################
# Installation
############################################################

RUN apk add --no-cache bash curl git &&\
    curl -L -o /usr/local/bin/rke https://github.com/rancher/rke/releases/download/v${VERSION}/rke_linux-amd64 &&\
    chmod +x /usr/local/bin/rke &&\
	apk del curl

############################################################
# Execution
############################################################
CMD [ "rke", "help"]
