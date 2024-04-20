# Local binaries
export PATH="$HOME/.local/bin:$PATH"

# Homebrew
export PATH="/opt/homebrew/bin:$PATH"

# Cargo
export PATH="$HOME/.cargo/bin:$PATH"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

