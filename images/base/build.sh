#!/bin/bash

podman build -t base .
podman run -it -v $HOME/go:/go:Z,U base
podman commit $(podman ps -a | head -2 | tail -1 | cut -f1 -d" ") base-vim
podman system prune -f
sudo chown -R $USER:$USER $HOME/go

cp .bash_aliases $HOME/
