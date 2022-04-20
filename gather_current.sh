#!/bin/bash

cp ~/.vimrc                .
cp ~/.zshrc                .
cp ~/.tmux.conf            .
cp ~/.config/mc/ini        .
cp ~/.config/mc/mc.keymap  .
cp ~/.config/mc/panels.ini .

echo "Files updated:"
git status --short
