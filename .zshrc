# -----------------------------------------------------------------------------
# oh my zsh

# Tell oh-my-zsh where it lives.
export ZSH="$HOME/.oh-my-zsh"

# Minimal theme.
ZSH_THEME="alanpeabody"

# Minimal plugins.
plugins=(git)

# Knock em' dead.
source $ZSH/oh-my-zsh.sh

# -----------------------------------------------------------------------------
# Aliases

# Use nvm to manage node because system package managers are bad at it.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# -----------------------------------------------------------------------------
# Secrets

# Load up secrets from the host machine.
# TODO: Encrypt secrets and just store in git.
[ -f "$HOME/.devcreds" ] && source "$HOME/.devcreds"

# -----------------------------------------------------------------------------
# Aliases

# Catch typos
alias vi="nvim"
alias vim="nvim"

# Be lazy
alias c="clear"

# Tui Shortcuts
alias lg="lazygit"
alias ldr="lazydocker"

# -----------------------------------------------------------------------------
# Environment Variables

# Set the shell, or some things can behave funny.
export SHELL=$(which zsh)

# Use god's editor.
export EDITOR=nvim

# -----------------------------------------------------------------------------
# GPG / SSH

# This allows gpg to correctly route the pinentry program to the TTY used by
# the session.
export GPG_TTY=$(tty)


# This sets the askpass program for ssh to be whatever is set here (qt4-ssh-askpass).
# On most systems, ssh will not be able to prompt for the yubikey unlock code
# without an explicit askpass program being set.
eval "$(ssh-agent -s; SSH_ASKPASS=/usr/bin/qt4-ssh-askpass)"

# This allows ssh to redirect authentication requests to gpg so that I can use
# my yubikey as a derived ssh key.
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

# This refreshes the gpg agent allowing different yubikeys to be used in the
# same session. You can switch yubikeys, source this config, and then gpg will
# begin to pick up on the new key.
gpg-connect-agent updatestartuptty /bye
gpgconf --launch gpg-agent

# -----------------------------------------------------------------------------
# Path

# My stuff
export PATH=$PATH:~/repos/dustinws/dots/bin

# Go's stuff
export PATH=$PATH:~/go/bin

# Rust's stuff
export PATH=$PATH:~/.cargo/bin
