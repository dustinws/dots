#!/bin/bash

if [ -f "$HOME/.zshrc" ]; then
    echo "detected existing .zshrc, exiting."
    echo "please backup, remove, and try again"
    exit 1
fi

echo "Beginning ohmyzsh installation..."
sleep 1
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Deleting default ohmyzsh .zshrc"
rm ~/.zshrc

stow . -t zsh
