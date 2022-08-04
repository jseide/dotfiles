#!/bin/bash

#WIP

# Install Vim and git
sudo apt-get update
sudo apt-get install -y vim tmux
sudo apt-get install -y build-essential cmake python3-dev x11-xserver-utils
sudo apt-get -y autoremove

PLUG_FILE=~/.vim/autoload/plug.vim

if [ -f "$PLUG_FILE" ]; then
    echo "$PLUG_FILE exists."
else
    echo "$PLUG_FILE not found; installing vim-plug"
    curl -fLo $PLUG_FILE --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

cp .vimrc $HOME
cp .tmux.conf $HOME

vim +'PlugInstall' +qa

cd ~/.vim/plugged/YouCompleteMe
python3 install.py --verbose


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
