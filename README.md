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

# Create directories if needed
mkdir -p $HOME/.config/{mc,fzf,git,zsh,nvim,tmux}

# Clone and install (download) fzf binary
git clone https://github.com/junegunn/fzf $HOME/.config/fzf
$HOME/.config/fzf/install --bin

# Copy configs to home
cp -iv .{tmux.conf,vimrc,zshrc,gitconfig} $HOME/
```

## Useful shortcuts list
### Vim
| Keys          | Mode    | Description                                 |
| ------------- | ------  | ------------------------------------------- |
| Ctrl-a/x      | NORMAL  | Increment/Decrement value.                  |
| g Ctrl-a/x    | NORMAL  | Increment/Decrement values in growing order.|
| gi            | NORMAL  | Start insert in last insert place.          |
| gv            | NORMAL  | Select previous visual selection.           |
| gw            | NORMAL  | Format text.                                |
| Ctrl-r=       | INSERT  | Calculate simple math expression.           |
| Ctrl-o        | INSERT  | Change to normal mode once.                 |
| Ctrl-p/n      | INSERT  | Basic word completion upward/downward.      |
| Ctrl-e        | INSERT  | Cancel word completion.                     |
| Ctrl-y        | INSERT  | Accept word completion.                     |
| Ctrl-x Ctrl-l | INSERT  | Whole line completion.                      |
| Ctrl-x Ctrl-o | INSERT  | Syntax-aware omnicompletion.                |
| o             | VISUAL  | Go to the other end of selection.           |
| !             | VISUAL  | Call external command for a selection.      |
| put r         | COMMAND | Pastes a given registry.                    |
| norm          | COMMAND | Performs normal mode keys on a line.        |

### Tmux
| Keys                   | Description                                 |
| ---------------------- | ------------------------------------------- |
| prefix ,               | Rename current window.                      |
| prefix $               | Rename current session.                     |
| prefix !               | Move current pane to a new window.          |
| prefix ]               | Paste from tmux buffer.                     |
| prefix s               | Open sessions list.                         |
| prefix L               | Switch back to the last session.            |
| prefix ~               | Show tmux commands log.                     |

### Emacs
| Keys                   | Description                                 |
| ---------------------- | ------------------------------------------- |
| Ctrl-c Ctrl-e lp       | Save org-mode file to PDF.                  |

### Midnight Commander
| Keys                   | Description                                 |
| ---------------------- | ------------------------------------------- |
| Esc+0123456789         | Function keys alternative.                  |
| Ctrl-x q               | Toggle file preview mode.                   |
| Ctrl-x h               | Save current location to hotlist.           |
| Alt-.                  | Toggle show hidden files.                   |
| Alt-,                  | Toggle vetical/horizontal panel split.      |
| Alt-i                  | Set other panel to the same as current.     |
| Alt-o                  | Open selected directory in other panel.     |
| Alt-t                  | Change current panel display.               |
| Alt-y                  | Jump to previous directory.                 |
| Alt-u                  | Jump to next directory.                     |
| Ctrl-r                 | Refresh active panel.                       |
| Ctrl-u                 | Swap panels location.                       |
| Ctrl-i                 | Change to other panel (like tab key).       |
| Ctrl-o                 | Toggle subshell view.                       |
| Ctrl-\                 | Open hotlist window.                        |
| +                      | Select files matching pattern.              |
| -                      | Deselect files matching pattern.            |
