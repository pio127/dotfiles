#!/bin/bash

cp ~/.vimrc                          ./
cp ~/.zshrc                          ./
cp ~/.tmux.conf                      ./
cp ~/.config/nvim/init.lua           ./.config/nvim/
cp ~/.config/mc/mc.keymap            ./.config/mc/
cp ~/.config/alacritty/alacritty.yml ./.config/alacritty/

echo "Files updated:"
git status --short
