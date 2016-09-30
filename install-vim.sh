#!/bin/bash

sudo apt-get install software-properties-common python-dev python-pip python3-dev python3-pip exuberant-ctags

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

pip2 install --upgrade neovim

mkdir -p "~/.config/nvim/bundle"

git clone "https://github.com/VundleVim/Vundle.vim.git" "~/.config/nvim/bundle/Vundle.vim"

# script needs to be started from repo folder
ln -sf "vimrc" "~/.config/nvim/init.nvim"

echo "Now you need to start vim and :VundleInstall"
