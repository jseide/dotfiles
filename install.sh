#!/bin/bash

#WIP

# Install Vim and git
sudo apt-get update
sudo apt-get install vim
sudo apt-get install git

#clone dotfiles
git clone https://github.com/jseide/dotfiles.git
cd dotfiles

# Make directories
#mkdir $HOME/.vim
#mkdir $HOME/.vim/plugged

# Get colour scheme
#wget https://gist.githubusercontent.com/thejmazz/3b3495e85478fa16b3de/raw/2ba36babd9060c0221a8b8bddba7af7ea05c6e0c/hybridbrackets.vim
#mv hybridbrackets.vim $HOME/.vim/colors
# Get Vundle
#git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
# Get .vimrc
#wget https://gist.githubusercontent.com/thejmazz/6618ded4dae5e02ea836/raw/38016cf08b7a4b27ad70a89c484debd8decb983e/.vimrc
#mv .vimrc $HOME
# Install Plugins
#vim +PluginInstall +qall
