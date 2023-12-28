#!/bin/bash

echo "Installing neovim dotfiles"

mkdir -p ~/.config/nvim/lua/user/
ln -s ~/dotfiles/nvim/lua/user/init.lua ~/.config/nvim/lua/user/init.lua
