#!/bin/bash

# get generate.vim from remote repository

cp .vimrc $HOME/.vimrc

vim +PlugInstall +qall
