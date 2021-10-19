# dotfiles

A backup for dotfiles on my current Void Linux setup.

## Installation

1. Clone this repo
2. Change the directory into the clonned repo: `cd dotfiles`
3. Use a dotfile using `stow`

    - If the dotfile is under the root directory:
    ```
    cd root
    sudo stow --target / folder_name
    ```
    - Else: `stow --target ~ folder_name`
