#!/bin/bash

if ! [ -d ~/.config/nvim ]; then
    mkdir -p ~/.config/nvim
fi

stow -t ~/.config/nvim nvim
