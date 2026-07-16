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
alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -A'
alias l='ls -lah'

if command -v eza >/dev/null 2>&1; then
    alias ls='eza --color=auto'
    alias ll='eza -lh --color=auto'
    alias la='eza -A --color=auto'
    alias l='eza -lah --color=auto'
fi

alias grep='grep --color=auto'
