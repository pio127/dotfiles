# Setup fzf
# ---------
if [[ ! "$PATH" == *$HOME/.config/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}$HOME/.config/fzf/bin"
fi

source <(fzf --zsh)
