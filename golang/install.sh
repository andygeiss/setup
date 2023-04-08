#!/bin/bash

TARGET="go.tar.gz"
VERSION="1.20.3"
URL="https://go.dev/dl/go$VERSION.linux-amd64.tar.gz"

curl -L -o $TARGET $URL &>/dev/null
tar -xzf $TARGET
if [ -d "$HOME/go$VERSION" ]; then
    rm -rf $HOME/go$VERSION $HOME/goroot
fi
mv go $HOME/go$VERSION
ln -sf $HOME/go$VERSION $HOME/goroot
rm -rf go*

# Go specific user profile
cp .profile $HOME/

