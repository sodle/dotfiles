# Load configs from directory
for file in ${ZDOTDIR:-HOME}/config/*.zsh(N); do
  source "$file"
done

# Load local configs if any
for file in ${ZDOTDIR:-HOME}/local/*.zsh(N); do
  source "$file"
done
