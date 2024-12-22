#!/bin/bash

if [ -d "~/bin" ]; then
    echo "detected existing ~/bin"
    echo "please backup, remove, and try again"
    exit 1
fi

mkdir ~/bin

stow -t ~/bin bin
