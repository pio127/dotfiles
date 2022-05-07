#!/bin/bash

cp ~/.vimrc                .
cp ~/.zshrc                .
cp ~/.tmux.conf            .
cp ~/.config/mc/mc.keymap  ./.config/mc/

echo "Files updated:"
git status --short
