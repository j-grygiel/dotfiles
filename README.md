# Dotfiles

## Information

Here are some details about my setup:

- OS: [Arch Linux](https://artixlinux.org/)
- Window Manager: [my build](https://github.com/j-grygiel/dwm) of [dwm](https://dwm.suckless.org/)
- Shell: [ZSH](https://www.zsh.org/)
- Terminal: [my build](https://github.com/j-grygiel/st) of [st](https://tools.suckless.org/slstatus/)
- Text Editor: [neovim](https://neovim.io/) and [VSCodium](https://vscodium.com/)
- Status Bar: [my build](https://github.com/j-grygiel/slstatus) of [slstatus](https://st.suckless.org/)
- Application Launcher: [Rofi](https://github.com/davatorium/rofi)
- Notification Daemon: [Dunst](https://dunst-project.org/)
- Music Player: [ncspot](https://github.com/hrkfdn/ncspot)
- Font: [elenapan](https://github.com/elenapan)'s [custom build](https://www.dropbox.com/s/nqyurzy8wcupkkz/myosevka.zip?dl=0) of [Iosevka](https://github.com/be5invis/Iosevka)

## Installation

I like to store my [dotfiles in a Git bare repository](https://www.atlassian.com/git/tutorials/dotfiles), here is how to install them onto a new system:

- Commit this alias to your `.bashrc` or `.zshrc` file:

    ``` bash
    alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
    ```

- Ensure the source repository ignores the folder where you'll clone the dotfiles:

    ``` bash
    echo ".cfg" >> .gitignore
    ```

- Clone the dotfiles into a vare repository in a "dot" folder of your `$HOME`:

    ``` bash
    git clone --bare https://github.com/j-grygiel/dotfiles.git $HOME/.cfg
    ```

- Define the alias in the current shell scope:

    ``` bash
    alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
    ```

- Checkout the content from the bare repository to `$HOME`:

    ``` bash
    config checkout
    ```

- Set the `showUntrackedFiles` to `no` on this local repository:

    ``` bash
    config config --local status.showUntrackedFiles no
    ```
