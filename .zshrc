# Add autocompletion
autoload -U compinit; compinit

# Use emacs style readline bindings
bindkey -e

# Add prompt editing in external editor
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

# Add QoL options
set -o ignoreeof     # Prevent shell exit (^D)
stty -ixon           # Disable flow start/stop characters(^S,^Q)
setopt share_history # Update and read zsh history after each call

# Add Fuzzy Finder
if [ -f "$HOME/.config/zsh/plugins/fzf.zsh" ]; then
    source "$HOME/.config/zsh/plugins/fzf.zsh"
    source "$HOME/.config/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh"
    export FZF_DEFAULT_COMMAND='fd --hidden --follow --exclude .git --exclude node_modules --exclude .wine-ni-ceip --exclude .steam 2> /dev/null'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND --type f"
    export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type d"
    export FZF_DEFAULT_OPTS="--layout reverse --multi --height=50%"
    export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -n 10'"
    export FZF_COMPLETION_DIR_COMMANDS="cd pushd rmdir tree ls"
fi

# Add Midnight Commander directory change persistence
if [ -f /usr/lib/mc/mc-wrapper.sh ]; then
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
export PAGER="less"
export MANPAGER='nvim +Man!'
export TERM="xterm-256color"
export HISTFILE="$HOME/.config/zsh/.zsh_history"
export SAVEHIST=1000000
export HISTSIZE=1000000

# Add aliases
alias vi="nvim"
alias vim="nvim"
alias cls="clear -x"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ls='ls --color=auto'
alias l='ls -CAFX'
alias ll='ls -lAFX'
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
alias gmt='git mergetool'
alias gcd='git checkout development'
alias glog='git log --graph --abbrev-commit --decorate --stat --stat-width=50'
