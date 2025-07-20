# Colors
autoload -U colors && colors

# Helper: Git branch and status
function prompt_git_info() {
    local branch git_status symbols
    if git rev-parse --is-inside-work-tree &>/dev/null; then
        branch=$(git symbolic-ref --short HEAD 2>/dev/null || git describe --tags --exact-match 2>/dev/null)
        git_status=$(git status --porcelain 2>/dev/null)
        symbols=""
        [[ "$git_status" == *"??"* ]] && symbols+="%F{red}✚%f"   # Untracked
        [[ "$git_status" == *" M"* ]] && symbols+="%F{yellow}●%f" # Modified
        [[ "$git_status" == *"A "* ]] && symbols+="%F{green}✚%f"  # Added
        [[ "$git_status" == *"D "* ]] && symbols+="%F{red}✖%f"    # Deleted
        [[ -z "$symbols" ]] && symbols="%F{green}✔%f"         # Clean
        echo "%F{blue}($branch)%f $symbols"
    fi
}

# Right prompt (git info)
function rprompt_git() {
    prompt_git_info
}

# Left prompt
setopt PROMPT_SUBST
if [[ -n "$SSH_CONNECTION" ]]; then
    PROMPT='%F{cyan}%~%f %F{magenta}(%n@%m)%f %F{white}›%f '
else
    PROMPT='%F{cyan}%~%f %F{magenta}(%n)%f %F{white}›%f '
fi
RPROMPT='$(rprompt_git)'