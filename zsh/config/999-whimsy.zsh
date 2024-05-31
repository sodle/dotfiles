# If available, print a fortune-telling cow on shell startup

FORTUNE=`command -v fortune`
COWSAY=`command -v cowsay || echo "cat"`
LOLCAT=`command -v lolcat || echo "cat"`

if [[ -n $FORTUNE ]]; then
  $FORTUNE | $COWSAY | $LOLCAT
fi
