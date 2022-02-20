typeset -U PATH path
path=("$HOME/.local/bin" "$HOME/.cabal/bin" '/opt/bin' $path)
export PATH

# Prevent messy $HOME
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export GTK2_RC_FILES=$XDG_CONFIG_HOME/gtk-2.0/gtkrc # ~/.themes must be present
export LESSHISTFILE=$XDG_DATA_HOME/less/history
export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority
export XINITRC=$XDG_CONFIG_HOME/X11/xinitrc
export XRESOURCES=$XDG_CONFIG_HOME/X11/xresources.Xresources
export MYSQL_HISTFILE=$XDG_DATA_HOME/mysql_history
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle

# nnn configs
export NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$"
export NNN_BMS="b:$XDG_CONFIG_HOME/nnn/bookmarks/;c:$XDG_CONFIG_HOME;d:$XDG_DATA_HOME;t:$XDG_DATA_HOME/Trash/files/;m:/media/"
export NNN_FIFO=/tmp/nnn.fifo
export NNN_OPENER=$XDG_CONFIG_HOME/nnn/plugins/nuke
export NNN_PLUG='l:-!&libreoffice $nnn'
export NNN_SEL=$XDG_CONFIG_HOME/nnn/.selection
export NNN_TMPFILE=$XDG_CONFIG_HOME/nnn/.lastd
export NNN_TRASH=2
export NNN_FCOLORS='020b044c00600ef7c6d6ab01'

# xsecurelock configs
export XSECURELOCK_FONT='Iosevka'
export XSECURELOCK_PASSWORD_PROMPT=asterisks
export XSECURELOCK_SHOW_DATETIME=1

export EDITOR=nvim
export VISUAL=$EDITOR
export NVM_DIR=$XDG_CONFIG_HOME/nvm
export QT_QPA_PLATFORMTHEME=qt5ct # Use GTK2 theme in QT apps
export _JAVA_AWT_WM_NONREPARENTING=1 # Fix bspwm not showing Android Studio properly
export SVDIR=$HOME/.local/var/service/
