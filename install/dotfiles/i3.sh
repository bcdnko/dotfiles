#!/bin/bash

echo "Installing i3 dotfiles"

rm -f ~/.config/i3/config
ln -s ~/dotfiles/i3/.i3config ~/.config/i3/config
ln -s ~/dotfiles/i3/.Xresources ~/.Xresources
