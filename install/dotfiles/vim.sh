#!/bin/bash

echo "Installing vim dotfiles"

rm -f ~/.vimrc
rm -f ~/.vim/colors/skythunder.vim
rm -f ~/.vim/autoload/airline/themes/skythunder.vim
mkdir -p ~/.vim/colors/
mkdir -p ~/.vim/autoload/airline/themes/
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/dotfiles/vim/colors/skythunder.vim ~/.vim/colors/skythunder.vim
ln -s ~/dotfiles/vim/autoload/airline/themes/skythunder.vim ~/.vim/autoload/airline/themes/skythunder.vim
