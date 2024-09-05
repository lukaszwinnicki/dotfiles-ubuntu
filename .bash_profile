
source ~/.aliases
source ~/.functions
source ~/.paths
source ~/.exports
source ~/.setttings
source ~/.custom_exports

#if command -v tmux>/dev/null; then
#  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
#fi

if command -v tmux &>/dev/null && [ -z "$TMUX" ]; then
    tmux attach -t main || tmux new -s main
fi

set -o vi
