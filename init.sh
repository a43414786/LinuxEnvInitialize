#!/bin/bash

sudo apt update
sudo apt upgrade

#Install git
sudo apt install git
#Install vim
sudo apt install git curl vim-gtk3
#Install gcc
sudo apt install build-essential
sudo apt install gcc tree make
gcc --version
#Install plugin manager “vim-plug”
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#Initial vim & bash setting
cp .vimrc ~/.vimrc
cp .bashrc ~/.bashrc
#Gen ssh key
ssh-keygen
echo sshkey : $(cat ~/.ssh/id_rsa.pub)
