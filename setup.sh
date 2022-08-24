#!/bin/bash
# Linux setup script
# Installs useful packages and config files

BASE_PACKAGES="vim gcc g++ curl wget ssh python3 python3-pip git htop perl \
                tmux"


function install-base-packages() {
    for PACKAGE in $BASE_PACKAGES 
    do
        sudo apt install $PACKAGE -y
    done 
}

function vim-setup() {
    rm ~/.vimrc
    rm -rf ~/.vim
    mkdir ~/.vim/undodir -p
    cp .vimrc ~/.vimrc
}

function tmux-setup() {
    cp .tmux.conf ~/.tmux.conf
    tmux source-file ~/.tmux.conf
}

echo "[*] Begin Setup"

echo "[*] Update"
sudo apt update -y && sudo apt upgrade -y

# Install important packages
echo "[*] Install Packages"
install-base-packages

# Replace .vimrc and .vim dir
echo "[*] Vim Setup"
vim-setup

echo "[*] Tmux Setup"
tmux-setup

echo "[*] Done"
