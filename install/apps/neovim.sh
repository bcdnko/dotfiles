#!/bin/bash

echo "Installing neovim"

sudo snap install --beta nvim --classic
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
#./install/dotfiles/neovim.sh
