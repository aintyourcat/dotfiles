typeset -U PATH path
path=("$HOME/.local/bin" "$HOME/.local/opt/bin" $path)
export PATH

if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

# Prevent messy $HOME
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share

test -f "$XDG_CONFIG_HOME/zsh/env/home-dir" && . "$XDG_CONFIG_HOME/zsh/env/home-dir"

# nnn configs
test -f "$XDG_CONFIG_HOME/zsh/env/nnn" && . "$XDG_CONFIG_HOME/zsh/env/nnn"

# xsecurelock configs
test -f "$XDG_CONFIG_HOME/zsh/env/xsecurelock" && . "$XDG_CONFIG_HOME/zsh/env/xsecurelock"

export EDITOR=nvim
export VISUAL=$EDITOR
export QT_QPA_PLATFORMTHEME=qt5ct # Use GTK2 theme in QT apps
export _JAVA_AWT_WM_NONREPARENTING=1 # Fix bspwm not showing Android Studio properly

# Void Linux user services dir
test -f "$XDG_CONFIG_HOME/zsh/env/void-linux" && . "$XDG_CONFIG_HOME/zsh/env/void-linux"
