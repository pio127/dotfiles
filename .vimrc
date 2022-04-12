"Enable options
set number
set wrap
set ruler 
set title
set wildmenu
set confirm
set hlsearch
set infercase
set incsearch
set gdefault
set breakindent
set cursorline

"Set options
set encoding=utf-8
set laststatus=2
set background=dark
set mouse=a
set ttymouse=xterm2
set clipboard=unnamedplus
set history=10000
set shell=zsh
set showbreak=↳

"Set style and color
syntax on 
highlight LineNr ctermfg=darkgrey ctermbg=black
highlight clear CursorLine
highlight CursorLineNR cterm=italic

"Disable options
set nocompatible
set norelativenumber
set noerrorbells
set nobackup
set noswapfile
set noundofile

"Default text formatting
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

"Filetype specific formatting
autocmd Filetype c,cpp,h,hpp setlocal cindent
autocmd Filetype make setlocal noexpandtab

"Toggle paste unmodified buffer
set pastetoggle=<F2>

"Turn off search highlight with enter key
nnoremap <CR> :noh<CR><CR>

"Unix Line Endings = '\n' "
set ff=unix

"If buffer is named then autosave after 1 sec idle
set updatetime=1000
autocmd CursorHold,CursorHoldI * if @% != '' && @% != '!zsh' | update | endif

"Buffer switching with leader+[]
map <leader>[ :previous <CR>
map <leader>] :next <CR>

"Paste in visual mode without copying
xnoremap p pgvy

"Operation repetition over visual section
xnoremap . :norm.<CR>

"Perform macro, saved in q register, over visual section using Q key
xnoremap Q :'<,'>:normal @q<CR>

"Automatic split equilization when vim is resized
autocmd VimResized * wincmd =

"Prevent change operation from overwritting main register
nnoremap c "_c
nnoremap C "_C

"Add plugin support (vim-plug)
call plug#begin()
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'mg979/vim-visual-multi'
    Plug 'preservim/nerdtree'
call plug#end()

"                 Useful vim shortcuts
" | Ctrl-o (insert mode)  | Change to command mode once. 
" | Ctrl-a/x              | Increment/Decrement value.
" | Ctrl-r= (insert mode) | Calculate simple math expression.
" | gi                    | Start insert in last insert place.
" | o (visual selection)  | Go to the other end.
