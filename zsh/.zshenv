typeset -U PATH path
path=("$HOME/.local/bin" "$HOME/.local/opt/bin" $path)
export PATH

if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

# Prevent messy $HOME
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

test -f "$ZDOTDIR/env/home-dir" && . "$ZDOTDIR/env/home-dir"

# nnn configs
test -f "$ZDOTDIR/env/nnn" && . "$ZDOTDIR/env/nnn"

# xsecurelock configs
test -f "$ZDOTDIR/env/xsecurelock" && . "$ZDOTDIR/env/xsecurelock"

export EDITOR=nvim
export VISUAL=$EDITOR
export QT_QPA_PLATFORMTHEME=qt5ct # Use GTK2 theme in QT apps
export _JAVA_AWT_WM_NONREPARENTING=1 # Fix bspwm not showing Android Studio properly

# Void Linux user services dir
test -f "$ZDOTDIR/env/void-linux" && . "$ZDOTDIR/env/void-linux"
