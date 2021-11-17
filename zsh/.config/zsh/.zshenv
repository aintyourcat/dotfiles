export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share

typeset -U PATH path
path=("$HOME/bin" "$HOME/.local/bin" '/opt/bin' $path)
export PATH

export EDITOR=nvim
export VISUAL=$EDITOR

# Prevent messy $HOME
export GTK2_RC_FILES=$XDG_CONFIG_HOME/gtk-2.0/gtkrc
export LESSHISTFILE=$XDG_DATA_HOME/less/history
export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority
export XINITRC=$XDG_CONFIG_HOME/X11/xinitrc
export XRESOURCES=$XDG_CONFIG_HOME/X11/xresources

# nnn configs
export NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$"
export NNN_BMS="c:$XDG_CONFIG_HOME;d:$XDG_DATA_HOME;t:$XDG_DATA_HOME/Trash/files/;m:/media/"
export NNN_FIFO=/tmp/nnn.fifo
export NNN_OPENER=$XDG_CONFIG_HOME/nnn/plugins/nuke
export NNN_PLUG='l:-_|libreoffice $nnn'
export NNN_SEL=$XDG_CONFIG_HOME/nnn/.selection
export NNN_TMPFILE=$XDG_CONFIG_HOME/nnn/.lastd
export NNN_TRASH=2
export NNN_FCOLORS='020b044c00600ef7c6d6ab01'

# nvm configs
export NVM_DIR=$XDG_CONFIG_HOME/nvm

# Make QT apps follow GTK theme
export GTK2_RC_FILES=$GTK2_RC_FILES:$XDG_DATA_HOME/themes/Nordic-darker/gtk-2.0/gtkrc
export QT_QPA_PLATFORMTHEME=qt5ct

# Fix Android Studio not showed properly
export _JAVA_AWT_WM_NONREPARENTING=1
