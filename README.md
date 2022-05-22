# dotfiles
A backup for dotfiles on my current Void Linux setup.

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
