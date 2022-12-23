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
apt install zsh neovim tmux mc fzf ripgrep 
```
```bash
pacman -Sy zsh neovim tmux mc fzf ripgrep 
```

## Plugins
Plugin managers:
1. oh-my-zsh
2. vim-plug
3. tpm

Installation:
```bash
# Create directories
mkdir ~/.zsh/ ~/.vim/autoload ~/.tmux/plugins

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
