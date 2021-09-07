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
set background=dark
set ttymouse=xterm2
set mouse=a
set clipboard=unnamedplus
set backupdir=~/.cache
set confirm
set history=1000
set noswapfile
set shell=zsh
set hlsearch
set ignorecase
set incsearch

"Default formatting
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

"Filetype specific formatting
autocmd Filetype c,cpp,h,hpp setlocal cindent
autocmd Filetype make setlocal noexpandtab

"Rebuild cmake project
nnoremap <F3> : ! bash -c 'cd build && cmake .. && make -j' <CR>

"Toggle paste unmodified buffer
set pastetoggle=<F2>

"Turn off search highlight with enter key
nnoremap <CR> :noh<CR><CR>

"Unix Line Endings = '\n' "
set ff=unix

"Remove arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

"Add fzf plugin location
set rtp+=~/.fzf

"If buffer is named then autosave after 1 sec idle
set updatetime=1000
autocmd CursorHold,CursorHoldI * if @% != '' && @% != '!zsh' | update | endif

"Buffer switching with leader+[]
map <leader>[ :previous <CR>
map <leader>] :next <CR>

"Paste in visual mode without copying
xnoremap p pgvy
