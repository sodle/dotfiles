FORTUNE=`command -v fortune`
COWSAY=`command -v cowsay || echo "cat"`
LOLCAT=`command -v lolcat || echo "cat"`

if [[ -n $FORTUNE ]]; then
  $FORTUNE | $COWSAY | $LOLCAT
fi
