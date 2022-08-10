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
cp global_extra_conf.py $HOME/.vim

vim +'PlugInstall' +qa

cd ~/.vim/plugged/YouCompleteMe
python3 install.py --verbose

cd ~
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux source ~/.tmux.conf
~/.tmux/plugins/tpm/scripts/install_plugins.sh


