# Quickly reload zshrc 
function zreload() {
  source $HOME/.zshenv
  source ${ZDOTDIR:-$HOME}/.zshrc 
}

# History
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

# Aliases
# ls
alias ls='ls --color=auto'
alias l='ls -l'
alias ll='ls -lahF'
alias lls='ls -lahFtr'
alias la='ls -alh'
alias lc='ls -CF'

# Safe move/copy/delete
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'

# Colorized, case-insensitive grep by default
alias grep="grep -i --color=auto"
