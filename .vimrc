syntax enable 
set number
set wrap
set encoding=utf-8
set laststatus=2
set ruler 
set cursorline
set relativenumber
set noerrorbells
set title
set wildmenu
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

autocmd Filetype cpp setlocal expandtab tabstop=2 shiftwidth=2 cindent
autocmd Filetype py setlocal expandtab tabstop=4 shiftwidth=4 autoindent

set hlsearch
set ignorecase
nnoremap <CR> :noh<CR><CR>

"Unix Line Endings = '\n' "
set ff=unix

"path to directory where clang library can be found
let g:clang_library_path='/usr/lib/x86_64-linux-gnu/libclang-6.0.so.1'

"Files tree
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_altv = 1

"Tab switching
nmap <c-h> <c-w>h<c-w>
nmap <c-l> <c-w>l<c-w>

"Remove arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
