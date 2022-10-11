sudo apt update
sudo apt upgrade

#Install git
sudo apt install git
#Install vim
sudo apt install git curl vim-gtk3
#Install gcc
sudo apt install build-essential
gcc --version
#Install plugin manager “vim-plug”
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vimplug/master/plug.vim
cp .vimrc ~/.vimrc
