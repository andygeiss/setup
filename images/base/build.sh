#!/bin/bash

docker build -t base .
docker run -it -v $HOME/devops:/go base
docker commit $(docker ps -a | head -2 | tail -1 | cut -f1 -d" ") base-vim
docker system prune -f

