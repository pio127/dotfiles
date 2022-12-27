# Load oh-my-zsh with additional plugins
OH_MY_ZSH_DIRECTORY="$HOME/.zsh/oh-my-zsh"
if [ ! -d $OH_MY_ZSH_DIRECTORY ]; then
    echo "Directory \"$OH_MY_ZSH_DIRECTORY\" not found. Loading without oh-my-zsh."
else
    export ZSH=$OH_MY_ZSH_DIRECTORY
    export ZSH_THEME='bira'

    # Use rip-grep as a search tool
    export FZF_DEFAULT_COMMAND='rg --files --hidden'
    export FZF_CTRL_T_COMMAND='rg --files --hidden'

    # Use fzf already downloaded by vim-plug (call install script to build fzf binary)
    if [ -d "$HOME/.local/share/nvim/plugged/fzf" ]; then
        export FZF_BASE="$HOME/.local/share/nvim/plugged/fzf"
    elif [ -d "$HOME/.vim/plugged/fzf" ]; then
        export FZF_BASE="$HOME/.vim/plugged/fzf"
    fi

    plugins=(
        git
        docker
        docker-compose
        fzf
        fzf-tab
    )

    source $ZSH/oh-my-zsh.sh
fi

# Add Midnight Commander browsing
if [ -f /usr/share/mc/bin/mc-wrapper.sh ]; then
    alias mc=". /usr/share/mc/bin/mc-wrapper.sh"
elif [ -f /usr/lib/mc/mc-wrapper.sh ]; then
    alias mc=". /usr/lib/mc/mc-wrapper.sh"
fi

# Add colors to manual pages opened with less
export LESS_TERMCAP_mb=$'\e[1;31m'
export LESS_TERMCAP_md=$'\e[1;33m'
export LESS_TERMCAP_so=$'\e[01;44;37m'
export LESS_TERMCAP_us=$'\e[01;37m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_ue=$'\e[0m'
export GROFF_NO_SGR=1

# Add aliases
alias vim="nvim"
alias cls="clear -x"
alias tgd="tmux resize-pane -Z && git diff && tmux resize-pane -Z"

# Set defaults
export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"
export MANPAGER='less -s -M +Gg'
export TERM="xterm-256color"

# Prevent ctrl+d shell exit behaviour
set -o ignoreeof
