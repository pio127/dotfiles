set nocompatible
syntax enable 
set number
set wrap
set encoding=utf-8
set laststatus=2
set ruler 
set relativenumber
set noerrorbells
set title
set wildmenu
set ttymouse=xterm2
set background=dark
set mouse=a
set clipboard=unnamedplus
set backupdir=~/.cache/vim
set confirm
set history=1000
set noswapfile
set shell=zsh
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

autocmd Filetype cpp setlocal expandtab tabstop=4 shiftwidth=4 cindent
autocmd Filetype c setlocal expandtab tabstop=4 shiftwidth=4 cindent
autocmd Filetype make setlocal noexpandtab
autocmd Filetype py setlocal expandtab tabstop=4 shiftwidth=4 autoindent

set hlsearch
set ignorecase
nnoremap <CR> :noh<CR><CR>

"Unix Line Endings = '\n' "
set ff=unix

"Tab switching
nmap <c-h> <c-w>h<c-w>
nmap <c-l> <c-w>l<c-w>

"Remove arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

"Add fzf plugin
set rtp+=~/.fzf

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:ycm_clangd_binary_path = "/usr/lib/llvm-6.0/bin/clangd"

"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
