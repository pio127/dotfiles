# Add autocompletion
autoload -U compinit; compinit

# Add fzf
if [ -f "$HOME/.fzf.zsh" ]; then
    source "$HOME/.fzf.zsh"
    export FZF_DEFAULT_COMMAND='rg --files --ignore-vcs --hidden'
    export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_DEFAULT_OPTS="--height 60% \
        --border sharp \
        --layout reverse \
        --color '$FZF_COLORS' \
        --prompt '∷ ' \
        --pointer ▶ \
        --marker ⇒"
    export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -n 10'"
    export FZF_COMPLETION_DIR_COMMANDS="cd pushd rmdir tree ls"
fi

# Add fzf-tab
if [ -d "$HOME/.zsh/fzf-tab/" ]; then
    source "$HOME/.zsh/fzf-tab/fzf-tab.plugin.zsh"
fi

# Add Midnight Commander browsing
if [ -f /usr/share/mc/bin/mc-wrapper.sh ]; then
    alias mc=". /usr/share/mc/bin/mc-wrapper.sh"
elif [ -f /usr/lib/mc/mc-wrapper.sh ]; then
    alias mc=". /usr/lib/mc/mc-wrapper.sh"
fi

# Add prompt
#RPROMPT="%t"
PS1='%F{yello}%n@%m%F{white}[%F{green}%/%f] $ '

# Set defaults
export EDITOR="nvim"
export VISUAL="nvim"
export MANPAGER='nvim +Man!'
export PAGER="less"
export TERM="xterm-256color"
export HISTFILE="$HOME/.zsh_history"
export SAVEHIST=100000
export HISTSIZE=100000 

# Add dot expansion
magic-dot() {
  if [[ $LBUFFER = (|*[[:blank:]/]).. ]]; then
    repeat ${NUMERIC-1} LBUFFER+=/..
  else
    zle self-insert
  fi
}
zle -N magic-dot
bindkey . magic-dot

# Add aliases
alias vi="nvim"
alias cls="clear -x"
alias l="ls -lha"
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias duhast='du -sh * | sort -hr'
alias gst='git status'
alias ga='git add'
alias gp='git push'
alias gpo='git pull origin'
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '
alias glog='git log --graph --abbrev-commit --oneline --decorate'

# Prevent ctrl+d shell exit behaviour
set -o ignoreeof
