#!/bin/bash

echo -e "Dotfiles copied from home directory:"
cp -v ~/.{zshrc,vimrc,tmux.conf} $(realpath .)
echo -e "\nDotfiles updated:"
git status --short .{zshrc,vimrc,tmux.conf}
