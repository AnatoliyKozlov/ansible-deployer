FROM ubuntu:22.10

ENV DEBIAN_FRONTEND noninteractive

LABEL version="1.0.1" \
      maintainer="toliyansky@gmail.com" \
      description="Image for deploying with ansible"

RUN apt update && apt install -y ansible sshpass python3-pip
RUN pip uninstall resolvelib # Crunch cause resolvelib has broken changes for ansible-galaxy
RUN pip install resolvelib==0.5.5 # Crunch cause resolvelib has broken changes for ansible-galaxy
RUN ansible-galaxy collection install community.general