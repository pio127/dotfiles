syntax enable 
set nocompatible
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
set hlsearch
set ignorecase
set incsearch

autocmd Filetype c,cpp,h,hpp setlocal expandtab tabstop=4 shiftwidth=4 cindent
autocmd Filetype make setlocal noexpandtab
autocmd Filetype py setlocal expandtab tabstop=4 shiftwidth=4 autoindent

nnoremap <CR> :noh<CR><CR>

"Unix Line Endings = '\n' "
set ff=unix

"Remove arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

"Add fzf plugin
set rtp+=~/.fzf

"Autosave after 2 sec idle
set updatetime=2000
autocmd CursorHold,CursorHoldI * update
