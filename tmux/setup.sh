#!/bin/bash

if [ -f "$HOME/.tmux.conf" ]; then
    echo "detected existing ~/.tmux.conf, exiting"
    echo "please backup, remove, and try again"
    exit 1
fi

echo "installing tmux plugin manager"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

stow -t ~ tmux
