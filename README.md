# Dotfiles

## Installation
Tools:
1. zsh (https://github.com/zsh-users/zsh)
2. neovim (https://github.com/neovim/neovim)
3. tmux (https://github.com/tmux/tmux)
4. mc (https://github.com/MidnightCommander/mc)
5. fzf (https://github.com/junegunn/fzf)
6. delta (https://github.com/dandavison/delta)

Plugins:
1. fzf-tab (https://github.com/Aloxaf/fzf-tab)
2. fzf-vim (https://github.com/junegunn/fzf.vim)
3. tmux-ressurect (https://github.com/tmux-plugins/tmux-resurrect)
4. vim-tmux-navigator (https://github.com/christoomey/vim-tmux-navigator)

Installation:
```bash
# Debian-based
apt install zsh neovim tmux mc

# Arch-based
pacman -S zsh neovim tmux mc

# Clone and install (download) fzf binary
git clone https://github.com/junegunn/fzf ~/.config/fzf
~/.config/fzf/install --bin

# Create directories if needed
mkdir -p $HOME/.config/{zsh,nvim,tmux}

# Clone plugins
git clone https://github.com/Aloxaf/fzf-tab $HOME/.config/zsh/fzf-tab
git clone https://github.com/junegunn/fzf.vim $HOME/.config/nvim/plugins/fzf.vim
git clone https://github.com/tmux-plugins/tmux-resurrect $HOME/.config/tmux/tmux-ressurect
git clone https://github.com/christoomey/vim-tmux-navigator $HOME/.config/nvim/plugins/vim-tmux-navigator
```

## Useful shortcuts list
### Vim
| Keys          | Mode   | Description                                 |
| ------------- | ------ | ------------------------------------------- |
| Ctrl-a/x      | NORMAL | Increment/Decrement value.                  |
| g Ctrl-a/x    | NORMAL | Increment/Decrement values in growing order.|
| gi            | NORMAL | Start insert in last insert place.          |
| gv            | NORMAL | Select previous visual selection.           |
| gw            | NORMAL | Format text.                                |
| Ctrl-r=       | INSERT | Calculate simple math expression.           |
| Ctrl-o        | INSERT | Change to normal mode once.                 |
| Ctrl-p/n      | INSERT | Basic word completion upward/downward.      |
| Ctrl-e        | INSERT | Cancel word completion.                     |
| Ctrl-y        | INSERT | Accept word completion.                     |
| Ctrl-x Ctrl-l | INSERT | Whole line completion.                      |
| Ctrl-x Ctrl-o | INSERT | Syntax-aware omnicompletion.                |
| o             | VISUAL | Go to the other end of selection.           |
| !             | VISUAL | Call external command for a selection.      |

### Emacs
| Keys                   | Description                                 |
| ---------------------- | ------------------------------------------- |
| Ctrl-c Ctrl-e lp       | Save org-mode file to PDF.                  |

### Midnight Commander
| Keys                   | Description                                 |
| ---------------------- | ------------------------------------------- |
| Esc+0123456789         | Function keys alternative.                  |
| Ctrl-x q               | Toggle file preview mode.                   |
| Alt-,                  | Toggle show hidden files.                   |
| Alt-.                  | Toggle vetical/horizontal panel split.      |
| Alt-i                  | Set other panel to the same as current.     |
| Alt-o                  | Open selected directory in other panel.     |
| Ctrl-o                 | Toggle subshell view.                       |
