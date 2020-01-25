#!/bin/bash

if grep -q '#dotfiles-section' ~/.bashrc
then
    echo "No need to update .bashrc"
else
    echo "" >> ~/.bashrc
	echo "#dotfiles-section" >> ~/.bashrc
    echo "source ~/dotfiles/bashrc/.bashrc" >> ~/.bashrc
	echo "#/dotfiles-section" >> ~/.bashrc
fi

