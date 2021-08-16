# History
HISTFILE=$XDG_DATA_HOME/zsh/history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS

PROMPT='%F{blue}%B%~%b%f %F{green}%#%f '

# Keybind
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey -v
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search
bindkey '^?' backward-delete-char

# The following lines were added by compinstall
zstyle :compinstall filename '/home/behappier/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Aliases
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
alias bc='bc -lq'
alias makebatchfile="cat $NNN_SEL | xargs -0 -I fname printf 'put -R %s\n' fname > batchfile"

# nnn cd on exit
n() {
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
        . "$NNN_TMPFILE"
        rm -f "$NNN_TMPFILE" > /dev/null
    fi
}

# Load nvm
nvm() {
    unset -f nvm
    [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh" --no-use
    nvm "$@"
}

# Load node binaries
load_node_binaries() {
    read DEFAULT_NODE_VERSION < $HOME/.nvmrc
    [ -z $DEFAULT_NODE_VERSION ] && DEFAULT_NODE_VERSION=$(nvm version default)
    [ -n $DEFAULT_NODE_VERSION ] && export path=("$NVM_DIR/version/node/$DEFAULT_NODE_VERSION/bin" $path)
}

# Load nvm bash completion
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

load_node_binaries
