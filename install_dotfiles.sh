#!/bin/bash

# Promts and then overwrites dotfiles in the home directory.

read -p "Start dotfiles installation? (y/n): " choice
if [ $choice == "y" ]; then
    echo "Starting installation!"
elif [ $choice == "n" ]; then
    echo "Aborting installation!"
else
    echo "Unknown option"
fi
