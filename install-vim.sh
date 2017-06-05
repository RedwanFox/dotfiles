#!/bin/bash
set -uex

home=$(eval echo ~$USER)

nvim_dir="$home/.config/nvim"
vundle_dir="$nvim_dir/bundle"
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
vimrc_path="$script_dir/vimrc"

ycm_dir="$home/.vim/bundle/YouCompleteMe"


sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update

sudo apt-get install software-properties-common python-dev python-pip python3-dev python3-pip exuberant-ctags build-essential cmake

sudo apt-get install neovim

pip2 install --upgrade --user neovim

sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

rm -rf $vundle_dir
mkdir -p $vundle_dir

git clone "https://github.com/VundleVim/Vundle.vim.git" "$vundle_dir/Vundle.vim"

ln -sf "$vimrc_path" "$nvim_dir/init.vim"
ln -sf "$vimrc_path" "$home/.vimrc"

echo "Downloading vim plugins"

vim +PluginInstall +qall  # install all plugs

echo "Installing YCM"
"$ycm_dir/install.py" --clang-completer --gocode-completer

echo "Installing PowerLine fonts"

git clone https://github.com/powerline/fonts.git /tmp/fonts
/tmp/fonts/install.sh
rm -rf /tmp/fonts
