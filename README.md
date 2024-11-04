# Dotfiles

## Tools
1. zsh (https://github.com/zsh-users/zsh)
2. neovim (https://github.com/neovim/neovim)
3. tmux (https://github.com/tmux/tmux)
4. mc (https://github.com/MidnightCommander/mc)
5. fzf (https://github.com/junegunn/fzf)
6. delta (https://github.com/dandavison/delta)

Installation:
```bash
# Debian-based
apt install zsh neovim tmux mc fzf

# Arch-based
pacman -S zsh neovim tmux mc fzf git-delta
```

## Plugins
1. vim-plug (https://github.com/junegunn/vim-plug)
3. fzf-tab (https://github.com/Aloxaf/fzf-tab)
3. tmux-ressurect (https://github.com/tmux-plugins/tmux-resurrect)

Installation:
```bash
# Create directories
mkdir -p $HOME/.{zsh,vim,tmux}

# Install vim-plug
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install fzf-tab plugin
git clone https://github.com/Aloxaf/fzf-tab $HOME/.zsh/fzf-tab

# Install tmux-ressurect plugin
git clone https://github.com/tmux-plugins/tmux-resurrect $HOME/.tmux/tmux-ressurect
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
