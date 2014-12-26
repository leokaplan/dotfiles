#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

sudo aptitude install exuberant-ctags
mkdir ~/.vim
touch ~/.vimrc
touch ~/.bashrc
ln -s /vim ~/.vim
ln -s /vim/vimrc ~/.vimrc
ln -s /bash/bashrc ~/.bashrc
git submodule foreach git pull 
