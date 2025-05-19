# Git aliases
alias gs='git status -s'
alias gsl='git status'
alias ga='git add'
alias gp='git push'
alias gr='git rebase'
alias gpo='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gpraise='git blame'
alias gpt='git push --tag'
alias gtd='git tag --delete'
alias gtdr='git tag --delete origin'
alias grb='git branch -r'                                                                           # display remote branch
alias gb='git branch'
alias gc='git commit'
alias gcam='git commit -am '
alias gd='git diff'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcm='git checkout main'
alias gf='git fetch'
alias gl='git log --oneline'
alias gll='git log'
alias grs='git remote show'
alias glol='git log --graph --abbrev-commit --oneline --decorate'

# Download .gitignore for given language/framework
function gi() { 
  curl -sLw "\\n" https://www.toptal.com/developers/gitignore/api/$@ ;
}
