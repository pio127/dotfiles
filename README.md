# Dotfiles

## Tools
Main tools:
1. zsh
2. neovim
3. tmux
4. mc
5. fzf
6. rg

Installation:
```bash
# Debian-based
apt install zsh neovim tmux mc fzf ripgrep 

# Arch-based
pacman -S zsh neovim tmux mc fzf ripgrep 
```

## Plugins
Plugin managers:
1. oh-my-zsh
2. vim-plug
3. tpm

Installation:
```bash
# Create directories
mkdir -p $HOME/.{zsh/oh-my-zsh,vim/autoload,tmux/plugins}

# Install oh-my-zsh
ZSH="$HOME/.zsh/oh-my-zsh" sh -c \
    "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) \
    --keep-zshrc \
    --unattended"

# Install fzf-tab zsh plugin
git clone https://github.com/Aloxaf/fzf-tab $HOME/.zsh/oh-my-zsh/custom/plugins/fzf-tab

# Install vim-plug
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
```

## Useful mappings list
### Vim
| Mapping                | Description                                 |
| ---------------------- | ------------------------------------------- |
| Ctrl-o (insert)        | Change to command mode once.                |
| Ctrl-a/x               | Increment/Decrement value.                  |
| g Ctrl-a/x             | Increment/Decrement values in growing order.|
| Ctrl-r= (insert)       | Calculate simple math expression.           |
| gi                     | Start insert in last insert place.          |
| o (visual)             | Go to the other end.                        |
| Ctrl-p/n (insert)      | Basic word completion upward/downward.      |
| Ctrl-e (insert)        | Cancel word completion.                     |
| Ctrl-y (insert)        | Accept word completion.                     |
| Ctrl-x Ctrl-l (insert) | Whole line completion.                      |
| Ctrl-x Ctrl-o (insert) | Syntax-aware omnicompletion.                |

### Emacs
| Mapping                | Description                                 |
| ---------------------- | ------------------------------------------- |
| Ctrl-c Ctrl-e lp       | Save org-mode file to PDF.                  |
