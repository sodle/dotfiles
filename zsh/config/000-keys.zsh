KEYMAP=emacs
bindkey -A $KEYMAP main

# Use bash-style word boundaries, 
# where each component of a path is considered its own word, 
# instead of the whole path being one word
autoload -U select-word-style
select-word-style bash
