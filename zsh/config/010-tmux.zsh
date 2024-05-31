# aliases
alias tmuxl='tmux list-sessions'

# Attach to named session, creating it if it doesn't exist
function tmuxa() {
  name=${1:-"main"}
  tmux new-session -A -s $name
}

# Open a directory in LunarVim, with a terminal in the pane below
# If already in a Tmux session, this opens in a new window in the same session
# Else, it opens in a new session
# Optionally specify a window name as the second arg, else it uses the directory name
function workon() {
  workdir=$1
  name=$2
  abs=$(realpath $workdir)
  base=$(basename $abs)
  name=${name:-$base}

  if [[ -z $TMUX ]]; then
    # not in tmux, start it up
    session_window=$(tmux new-session -n $name -dPF '#{session_id} #{window_id}')
    session_id=$(cut -d' ' -f1 <(echo $session_window))
    window_id=$(cut -d' ' -f2 <(echo $session_window))
  else
    # already in tmux, just create a new window
    window_id=$(tmux new-window -n $name -dPF '#{window_id}')
  fi

  tmux send-keys -t $window_id "cd $abs" Enter 'VIRTUAL_ENV=`pyenv which python` v' Enter
  pane_id=$(tmux split-window -t $window_id -vl 8 -PF '#{pane_id}')
  tmux send-keys -t $pane_id "cd $abs" Enter

  if [[ -z $session_id ]]; then
    tmux select-window -t $window_id
  else
    tmux attach-session -t $session_id
  fi
}

alias dotfiles='workon ~/.config dotfiles'
