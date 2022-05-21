FROM ubuntu:22.10

LABEL version="1.0.1" \
      maintainer="toliyansky@gmail.com" \
      description="Image for deploying with ansible"

RUN apt update && apt install -y ansible sshpass python3-pip
RUN pip install docker