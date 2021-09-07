export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="bira"
export FZF_BASE="$HOME/.fzf"

plugins=(git 
         zsh-syntax-highlighting
         systemadmin
         vi-mode
         )

# Oh-my-zsh activation
source $ZSH/oh-my-zsh.sh

# Setting fzf
if [[ ! "$PATH" == *$HOME/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}$HOME/.fzf/bin"
fi
[[ $- == *i* ]] && source "$HOME/.fzf/shell/completion.zsh" 2> /dev/null; \
                   source "$HOME/.fzf/shell/key-bindings.zsh"


# Browsing with Midnight Commander
[ -f /usr/share/mc/bin/mc-wrapper.sh ] && alias mc=". /usr/share/mc/bin/mc-wrapper.sh"
[ -f /usr/lib/mc/mc-wrapper.sh ] && alias mc=". /usr/lib/mc/mc-wrapper.sh"

# Setting most as a pager
$(command -v most 1>/dev/null 2>&1) && export PAGER="most"

# Setting term env variable to xterm_256color for tmux
export TERM="xterm-256color"

# Main text editor
export EDITOR="vim"

# Default scripts folder
export PATH=$PATH:~/projects/bash/scripts

# Prevent Ctrl+s terminal freeze
stty -ixon

# Adding autojump
[ -f /usr/share/autojump/autojump.sh ] && source /usr/share/autojump/autojump.sh 
