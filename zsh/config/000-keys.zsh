# emacs: emacs, duh
# viins: vi mode, start in insert
# vicmd: vi mode, start in normal/command mode
KEYMAP=viins
bindkey -A $KEYMAP main

if [[ $KEYMAP == "emacs" ]]; then
  # Up/Down arrows search history
  autoload -U up-line-or-beginning-search
  autoload -U down-line-or-beginning-search
  zle -N up-line-or-beginning-search
  zle -N down-line-or-beginning-search
  bindkey "^[[A" up-line-or-beginning-search # Up
  bindkey "^[[B" down-line-or-beginning-search # Down
fi
