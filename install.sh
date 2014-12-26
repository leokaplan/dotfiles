#!/bin/bash

sudo aptitude install exuberant-ctags
git submodule foreach git pull 
read -p "is ok to change your terminal profile? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
  terminal-solarized/install.sh 
fi
mkdir ~/.vim
touch ~/.vimrc
touch ~/.bashrc
ln -s /vim ~/.vim
ln -s /vim/vimrc ~/.vimrc
ln -s /bash/bashrc ~/.bashrc
