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

# nvm (NodeJS)
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# uv (Python)
export PATH="${XDG_CONFIG_HOME}/local/bin:$PATH"
alias uvr="uv run"
alias uvm="uv run ./manage.py"

# Ruby/rbenv
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"

# Android SDK
export ANDROID_HOME="$HOME/Library/Android/sdk"
if [ -d "$ANDROID_HOME" ]; then
    export NDK_HOME="$ANDROID_HOME/ndk/$(ls -1 $ANDROID_HOME/ndk)"
fi

# Flutter
export PATH="$HOME/flutter/flutter/bin:$HOME/.pub-cache/bin:$PATH"
