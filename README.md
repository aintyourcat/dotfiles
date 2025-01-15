# dotfiles
A backup for dotfiles on my current Void Linux setup.

## Dependencies
```sh
alacritty
batsignal
breeze-gtk
dunst
git
herbstluftwm
light
neovim
papirus-icon-theme
polybar
qt5-styleplugins
qt5ct
rofi
setxkbmap
stow
tmux
xclip
xclip
xrdb
xsecurelock
xsetroot
xsettingsd
xss-lock
xwallpaper
zsh
```
TODO: list each config dependencies. eg: alacritty depends on alacritty (obviously), x depends on batsignal

## Installation
1. Clone this repo:

    ```sh
    git clone https://github.com/aintyourcat/dotfiles.git
    ```
2. Change the directory into the clonned repo:

    ```sh
    cd dotfiles
    ```
3. Use a dotfile using `stow`

    If the dotfile is under the root directory:
    ```sh
    cd root
    sudo stow --target / folder_name
    ```
    Else:
    ```sh
    stow --target ~ folder_name
    ```

## Credits
1. [turquoise-hexagon's dots](https://github.com/turquoise-hexagon/dots)
2. [madand's runit-services](https://github.com/madand/runit-services)
