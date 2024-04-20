# aliases
alias tmuxl='tmux list-sessions'

# Attach to named session, creating it if it doesn't exit
function tmuxa() {
  name=${1:-"main"}
  echo $name
  tmux new-session -A -s $name
}
