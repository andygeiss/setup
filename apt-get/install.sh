#!/bin/bash

sudo apt-get update && \
    sudo apt-get upgrade -y && \
    sudo apt-get install -y \
    podman \
    && sudo apt-get autoremove -y

sudo cp -f registries.conf /etc/containers/

