# Homebrew and zsh-completions shell completions
if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  FPATH="$(brew --prefix)/share/zsh-completions:${FPATH}"
fi

# Docker
fpath=("$HOME/.docker/completions" $fpath)

# Other stuff in ~/.zfunc
fpath=("$HOME/.zfunc" $fpath)

autoload -U compinit; compinit -d "$XDG_CACHE_HOME/zsh/.zcompdump"

# Enable completers
zstyle ':completion:*' completer _extensions _complete _approximate

# Caching
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"

# Organize completion menu
zstyle ':completion:*' menu select
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*' group-name ''

# Fancy listing for file path completions
zstyle ':completion:*' file-list all
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Other path-related stuff
setopt COMPLETE_IN_WORD     # Complete from both ends of a word.
setopt ALWAYS_TO_END        # Move cursor to the end of a completed word.
setopt PATH_DIRS            # Perform path search even on command names with slashes.
setopt AUTO_MENU            # Show completion menu on a successive tab press.
setopt AUTO_LIST            # Automatically list choices on ambiguous completion.
setopt AUTO_PARAM_SLASH     # If completed parameter is a directory, add a trailing slash.
setopt EXTENDED_GLOB        # Needed for file modification glob modifiers with compinit.
unsetopt MENU_COMPLETE      # Do not autoselect the first completion entry.
unsetopt FLOW_CONTROL       # Disable start/stop characters in shell editor.

# Partial path component completion
zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
setopt CASE_GLOB

compinit

# k8s
source <(kubectl completion zsh)
