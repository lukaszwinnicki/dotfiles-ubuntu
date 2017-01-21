
source ~/.aliases
source ~/.functions
source ~/.paths
source ~/.exports
source ~/.custom_exports

if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi
