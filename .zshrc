# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
#ZSH_THEME="simple"
#ZSH_THEME="risto"
ZSH_THEME="bira"

# Enable command auto-correction
# ENABLE_CORRECTION="true"

# Plugins
plugins=(git zsh-syntax-highlighting)

# Oh-my-zsh activation
source $ZSH/oh-my-zsh.sh

# Browsing with Midnight Commander
[ -f /usr/share/mc/bin/mc-wrapper.sh ] && alias mc=". /usr/share/mc/bin/mc-wrapper.sh"
[ -f /usr/lib/mc/mc-wrapper.sh ] && alias mc=". /usr/lib/mc/mc-wrapper.sh"

# Fuzzy finder activation
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

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
