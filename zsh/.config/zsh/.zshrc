# History
HISTFILE=$XDG_DATA_HOME/zsh/history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS

#PROMPT='%F{blue}%B%~%b%f %F{green}%#%f '

# Keybind
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey -v
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search
bindkey '^?' backward-delete-char

# The following lines were added by compinstall
zstyle :compinstall filename '/home/behappier/.config/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# nnn cd on exit
function n() {
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

# Aliases
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
alias bc='bc -lq'
alias q='exit'
n='n -x -H -Tt -o'; nnn -h | grep --quiet -- -G && n="$n -G"; alias n=$n; unset -v n
alias startx="startx $XINITRC"
alias g='git'
alias d='docker'
alias doco='docker compose'

# Load nvm
export NVM_DIR="${NVM_DIR:-${HOME}/.nvm}"

nvm() {
    unset -f nvm
    [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh" --no-use
    nvm "$@"
}

# Load nvm bash completion
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

# Dynamic terminal title
# https://wiki.archlinux.org/title/Zsh#xterm_title
autoload -Uz add-zsh-hook

function xterm_title_precmd () {
	print -Pn -- '\e]2;%n@%m %~\a'
	[[ "$TERM" == 'screen'* ]] && print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-}\e\\'
}

function xterm_title_preexec () {
	print -Pn -- '\e]2;%n@%m %~ %# ' && print -n -- "${(q)1}\a"
	[[ "$TERM" == 'screen'* ]] && { print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-} %# ' && print -n -- "${(q)1}\e\\"; }
}

if [[ "$TERM" == (Eterm*|alacritty*|aterm*|gnome*|konsole*|kterm*|putty*|rxvt*|screen*|tmux*|xterm*) && -z "$TMUX" ]]; then
	add-zsh-hook -Uz precmd xterm_title_precmd
	add-zsh-hook -Uz preexec xterm_title_preexec
fi

# https://github.com/sindresorhus/pure?tab=readme-ov-file#manually
if [ -d $HOME/.zsh/pure ]; then
	fpath+=($HOME/.zsh/pure)
	autoload -U promptinit; promptinit
	prompt pure
fi
