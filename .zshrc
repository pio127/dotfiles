# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="bira"

# Enable command auto-correction
# ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(git zsh-syntax-highlighting)

# Oh-my-zsh activation
source $ZSH/oh-my-zsh.sh

# Browsing with Midnight Commander
alias mc=". /usr/share/mc/bin/mc-wrapper.sh"

# Fuzzy finder activation
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# Setting most as a pager
$(command -v most 1>/dev/null 2>&1) && export PAGER="most"

# Setting term env variable to xterm_256color
export TERM="xterm-256color"

export EDITOR="vim"
