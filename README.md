# Scott Odle's dotfiles
Personal configurations for Alacritty, zsh, tmux, and LunarVim

## Requirements
* Alacritty (`brew install alacritty`)
* zsh
* tmux
* LunarVim ([setup instructions](https://www.lunarvim.org/docs/installation))
* pyenv and pyenv-virtualenv
* [Meslo NerdFont](https://www.nerdfonts.com/font-downloads)

## Setup
1. Clone repo to `~/.config`
2. Set up Python dependencies for lvim
    ```bash
    pyenv install 3.12
    pyenv virtualenv 3.12 nvim
    pyenv shell nvim
    pyenv install neovim
    ```
3. Create `~/.zshenv`:
    ```bash
    # Set up config paths
    export XDG_CONFIG_HOME="$HOME/.config"
    export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
    export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

    # ZSH config path
    export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
    ```

## ZSH configs
`.config/zsh/.zshrc` loads configs in alphabetical order from `.config/zsh/config`. Files in this directory are tracked by git.

If you have local configs that you don't want committed (such as an API token or proprietary work stuff), put it in `.config/zsh/local`.
