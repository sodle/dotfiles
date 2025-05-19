if [ -d "${XDG_CONFIG_HOME}/.git" ]; then
    git_status=$(git -C "$XDG_CONFIG_HOME" status --porcelain 2>/dev/null)
    if [ -n "$git_status" ]; then
        # Yellow color: \033[33m, Reset: \033[0m
        echo -e "⚠️  \033[33mWarning: $XDG_CONFIG_HOME git repo has uncommitted changes.\033[0m"
    fi
fi