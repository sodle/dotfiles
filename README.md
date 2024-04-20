# Scott Odle's dotfiles
Personal configurations for Alacritty, zsh, tmux, and LunarVim

## Requirements
* Alacritty (`brew install alacritty`)
* zsh
* tmux
* LunarVim ([setup instructions](https://www.lunarvim.org/docs/installation))
* pyenv
* [Meslo NerdFont](https://www.nerdfonts.com/font-downloads)

## Setup
1. Clone repo to `~/.config`
2. Create `~/.zshenv`:
    ```bash
    # Set up config paths
    export XDG_CONFIG_HOME="$HOME/.config"
    export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
    export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

    # ZSH config path
    export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
    ```
