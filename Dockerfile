FROM ubuntu:19.10

LABEL version="1.0" \
      maintainer="toliyansky@gmail.com" \
      description="Image for deploying with ansible"

RUN apt update && apt install -y ansible sshpass