
source ~/.aliases
source ~/.functions
source ~/.paths
source ~/.exports

if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi
