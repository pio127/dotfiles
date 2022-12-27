#!/bin/bash

# Promts and then overwrites dotfiles in the home directory.

CHOICE=""

read -p "Start dotfiles installation? (y/n): " CHOICE
if [ $CHOICE == "y" ]; then
    echo "Starting installation!"
elif [ $CHOICE == "n" ]; then
    echo "Aborting installation!"
    exit 0
else
    echo "Unknown option"
    exit 1
fi
