FROM ubuntu:21.10

ENV DEBIAN_FRONTEND noninteractive

LABEL version="1.0.1" \
      maintainer="toliyansky@gmail.com" \
      description="Image for deploying with ansible"

RUN apt update && apt install -y ansible sshpass python3-pip
RUN ansible-galaxy list
RUN ansible-galaxy collection install community.general
RUN pip install docker