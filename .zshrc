# Add autocompletion
autoload -U compinit; compinit

# Add prompt editing in editor
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

# Add fzf
if [ -f "$HOME/.config/zsh/fzf.zsh" ]; then
    source "$HOME/.config/zsh/fzf.zsh"
    export FZF_DEFAULT_COMMAND="find . -not -path './.git/*' 2>/dev/null"
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_DEFAULT_OPTS="--layout reverse --multi --height=50%"
    export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -n 10'"
    export FZF_COMPLETION_DIR_COMMANDS="cd pushd rmdir tree ls"
fi

# Add fzf-tab
if [ -d "$HOME/.config/zsh/fzf-tab/" ]; then
    source "$HOME/.config/zsh/fzf-tab/fzf-tab.plugin.zsh"
fi

# Add Midnight Commander directory change persistence
if [ -f /usr/share/mc/bin/mc-wrapper.sh ]; then
    alias mc=". /usr/share/mc/bin/mc-wrapper.sh"
elif [ -f /usr/lib/mc/mc-wrapper.sh ]; then
    alias mc=". /usr/lib/mc/mc-wrapper.sh"
fi

# Set prompt style
autoload -Uz vcs_info
precmd () { vcs_info }
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%b'
PS1=$'\n%B%F{green}%~ %f%F{magenta}$vcs_info_msg_0_%f%F{yellow}\n>%f%b '

# Set defaults
export EDITOR="nvim"
export VISUAL="nvim"
export MANPAGER='nvim +Man!'
export PAGER="less"
export TERM="xterm-256color"
export HISTFILE="$HOME/.zsh_history"
export SAVEHIST=100000
export HISTSIZE=100000 

# Add aliases
alias vi="nvim"
alias cls="clear -x"
alias ls='ls --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias l='ls -CF'
alias ll='ls -alF'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias dust='du -sh * | sort -hr'
alias gst='git status --short'
alias ga='git add'
alias gp='git push'
alias gpo='git pull origin'
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gds='git diff --staged'
alias gco='git checkout '
alias gcm='git checkout master'
alias gcd='git checkout development'
alias glog='git log --graph --abbrev-commit --decorate --stat --stat-width=50'

# Prevent shell exit (^D)
set -o ignoreeof

# Enable readline emacs mode bindings
bindkey -e

# Disable flow start/stop characters(^S,^Q)
stty -ixon

# Update and read zsh history after each call
setopt share_history
