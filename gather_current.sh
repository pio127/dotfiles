#!/bin/bash

cp ~/.vimrc                .
cp ~/.zshrc                .
cp ~/.tmux.conf            .
cp ~/.config/mc/ini        ./.config/mc/
cp ~/.config/mc/mc.keymap  ./.config/mc/
cp ~/.config/mc/panels.ini ./.config/mc/

echo "Files updated:"
git status --short
