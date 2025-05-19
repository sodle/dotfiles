# Scott's dotfiles

Personal configurations for zsh and other tools

## Requirements

- zsh and zsh-completions
- `fnm`
- `uv`

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

## ZSH configs

`.config/zsh/.zshrc` loads configs in alphabetical order from `.config/zsh/config`. Files in this directory are tracked by git.

If you have local configs that you don't want committed (such as an API token or proprietary work stuff), put it in `.config/zsh/local`.
