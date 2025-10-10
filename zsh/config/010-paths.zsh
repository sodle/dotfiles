# Local binaries
export PATH="$HOME/.local/bin:$PATH"

# snaps
export PATH="/snap/bin:$PATH"

# Homebrew
export PATH="/opt/homebrew/bin:$PATH"

# Cargo
export PATH="$HOME/.cargo/bin:$PATH"
source "$HOME/.cargo/env"

# Go
export GOPATH="$HOME/src/go"
export PATH="$GOPATH/bin:$PATH"

# FNM (NodeJS)
export PATH="${XDG_DATA_HOME}/fnm:$PATH"
eval "$(fnm env --use-on-cd --shell zsh)"

# uv (Python)
export PATH="${XDG_CONFIG_HOME}/local/bin:$PATH"
alias uvr="uv run"
alias uvm="uv run ./manage.py"

# Ruby/rbenv
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"

# Bitwarden SSH agent
export SSH_AUTH_SOCK="$HOME/Library/Containers/com.bitwarden.desktop/Data/.bitwarden-ssh-agent.sock"

# Android SDK
export ANDROID_HOME="$HOME/Library/Android/sdk"
export NDK_HOME="$ANDROID_HOME/ndk/$(ls -1 $ANDROID_HOME/ndk)"

# Flutter
export PATH="$HOME/flutter/flutter/bin:$PATH"
