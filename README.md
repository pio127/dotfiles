# Dotfiles

## Tools
Main tools:
1. zsh (https://github.com/zsh-users/zsh)
2. neovim (https://github.com/neovim/neovim)
3. tmux (https://github.com/tmux/tmux)
4. mc (https://github.com/MidnightCommander/mc)
5. fzf (https://github.com/junegunn/fzf)
6. rg (https://github.com/BurntSushi/ripgrep)

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
| Mapping       | Mode   | Description                                 |
| ------------- | ------ | ------------------------------------------- |
| Ctrl-o        | INSERT | Change to normal mode once.                 |
| Ctrl-a/x      | NORMAL | Increment/Decrement value.                  |
| g Ctrl-a/x    | NORMAL | Increment/Decrement values in growing order.|
| Ctrl-r=       | INSERT | Calculate simple math expression.           |
| gi            | NORMAL | Start insert in last insert place.          |
| o             | VISUAL | Go to the other end.                        |
| Ctrl-p/n      | NORMAL | Basic word completion upward/downward.      |
| Ctrl-e        | INSERT | Cancel word completion.                     |
| Ctrl-y        | INSERT | Accept word completion.                     |
| Ctrl-x Ctrl-l | INSERT | Whole line completion.                      |
| Ctrl-x Ctrl-o | INSERT | Syntax-aware omnicompletion.                |

### Emacs
| Mapping                | Description                                 |
| ---------------------- | ------------------------------------------- |
| Ctrl-c Ctrl-e lp       | Save org-mode file to PDF.                  |
