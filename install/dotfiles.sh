#!/bin/bash

rm -f ~/.vimrc
rm -f ~/.config/i3/config
rm -f ~/.vim/colors/skythunder.vim
rm -f ~/.vim/autoload/airline/themes/skythunder.vim

mkdir -p ~/.vim/colors/
mkdir -p ~/.vim/autoload/airline/themes/
mkdir -p ~/.config/nvim/lua/user/

ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/dotfiles/nvim/lua/user/init.lua ~/.config/nvim/lua/user/init.lua
ln -s ~/dotfiles/i3/.i3config ~/.config/i3/config
ln -s ~/dotfiles/i3/.Xresources ~/.Xresources
ln -s ~/dotfiles/vim/colors/skythunder.vim ~/.vim/colors/skythunder.vim
ln -s ~/dotfiles/vim/autoload/airline/themes/skythunder.vim ~/.vim/autoload/airline/themes/skythunder.vim
