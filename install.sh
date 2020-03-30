#!/bin/bash

sudo apt install exuberant-ctags vim-gui-common vim-runtime
git submodule update --init --recursive 
read -p "is it ok to change your terminal profile? " -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  terminal-solarized/install.sh 
fi
read -p "is it ok to overwrite your .vim and .vimrc? " -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  rm ~/.vim -rf
  rm ~/.vimrc
  ln -s $PWD/.vim ~/.vim
  ln -s $PWD/.vim/.vimrc ~/.vimrc
fi
read -p "is it ok to overwrite your .bashrc? " -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  rm ~/.bashrc
  ln -s $PWD/.bash/.bashrc ~/.bashrc
fi
