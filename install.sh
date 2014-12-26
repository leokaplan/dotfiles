#!/bin/bash

sudo aptitude install exuberant-ctags
git submodule foreach git pull 
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
ln -s /vim ~/.vim
ln -s /vim/vimrc ~/.vimrc
fi
read -p "is it ok to overwrite your .bashrc? " -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  rm ~/.bashrc
  ln -s /bash/bashrc ~/.bashrc
fi
