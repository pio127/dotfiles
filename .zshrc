# Loading oh-my-zsh with plugins
OH_MY_ZSH_PATH="$HOME/.zsh/oh-my-zsh"

if [ ! -d $OH_MY_ZSH_PATH ]; then
    echo "\e[0;31mDirectory \"$OH_MY_ZSH_PATH\" was not found.\e[0m"
else
    export ZSH=$OH_MY_ZSH_PATH
    export ZSH_THEME="bira"
    export FZF_BASE="$HOME/.vim/plugged/fzf"
    export FZF_DEFAULT_COMMAND='rg --files --hidden'

    plugins=(
        git 
        vi-mode
        fzf
        zsh-syntax-highlighting
        zsh-interactive-cd
    )

    source $ZSH/oh-my-zsh.sh
fi

# Browsing with Midnight Commander
if [ -f /usr/share/mc/bin/mc-wrapper.sh ]; then
    alias mc=". /usr/share/mc/bin/mc-wrapper.sh"
elif [ -f /usr/lib/mc/mc-wrapper.sh ]; then
    alias mc=". /usr/lib/mc/mc-wrapper.sh"
fi

# Adding colors to less in manuals
export LESS_TERMCAP_mb=$'\e[1;31m'    
export LESS_TERMCAP_md=$'\e[1;33m'    
export LESS_TERMCAP_so=$'\e[01;44;37m'
export LESS_TERMCAP_us=$'\e[01;37m'   
export LESS_TERMCAP_me=$'\e[0m'       
export LESS_TERMCAP_se=$'\e[0m'       
export LESS_TERMCAP_ue=$'\e[0m'       
export GROFF_NO_SGR=1                 
export MANPAGER='less -s -M +Gg'
export PAGER='less'

# Setting term env variable to xterm_256color for tmux
export TERM="xterm-256color"

# Main text editor
export EDITOR="vim"

# Prevent Ctrl+s terminal freeze
stty -ixon
