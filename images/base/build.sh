#!/bin/bash

podman build -t base .
podman run -it -v $HOME/go:/go base
podman commit $(podman ps -a | head -2 | tail -1 | cut -f1 -d" ") base-vim
podman system prune -f
