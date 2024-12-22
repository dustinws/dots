export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="alanpeabody"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

if [ -f "$HOME/.devcreds" ]; then
    source "$HOME/.devcreds"
fi

alias k="kubectl"
alias vi="nvim"
alias vim="nvim"
alias c="clear"
alias lg="lazygit"
alias ldr="lazydocker"
alias ls=eza
alias cat=bat
alias tml="tmux list-sessions"
alias tma="tmux attach-session -t"
alias tmn="tmux new -s"

export SHELL=$(which zsh)
export BAT_THEME=ansi
export EDITOR=nvim
export PATH=$PATH:~/bin
export PATH=$PATH:~/go/bin
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/.config/emacs/bin
export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin

export GOFLAGS="-tags=unit,integration,mage"

eval "$(zoxide init zsh)"
eval "$(direnv hook zsh)"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GPG_TTY=$(tty)
eval "$(ssh-agent -s; SSH_ASKPASS=/usr/bin/qt4-ssh-askpass)"
gpg-connect-agent updatestartuptty /bye
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
