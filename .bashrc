# Exit if not interactive
[[ $- != *i* ]] && return

# Environment
export EDITOR=nano
export GOPATH="$HOME/.go"

# PATH
path_add() {
    [[ -d "$1" && ":$PATH:" != *":$1:"* ]] && PATH+=":$1"
}

path_add "$HOME/.local/bin"
path_add "$HOME/.cargo/bin"
path_add "$HOME/go/bin"
path_add "$GOPATH/bin"

export PATH

# Prompt
PS1='[\u@\h \w]\$ '

# Aliases
command -v eza >/dev/null && {
    alias ls='eza --color=auto'
    alias ll='eza -l --color=auto'
    alias la='eza -A --color=auto'
    alias l='eza -la --color=auto'
}

alias grep='grep --color=auto'
