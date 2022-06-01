"Add plugins 
call plug#begin()
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'noahfrederick/vim-hemisu'
    Plug 'itchyny/lightline.vim'

    Plug 'mg979/vim-visual-multi'
    Plug 'justinmk/vim-sneak'
    Plug 'itchyny/vim-cursorword'
call plug#end()

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
set splitbelow
set splitright

"Set options
set encoding=utf-8
set laststatus=2
set background=dark
set mouse=a
set clipboard+=unnamedplus
set history=10000
set shell=zsh
set showbreak=↳
set ff=unix
set backspace=2
set shortmess=F

"Set options not compatible with nvim
if !has('nvim')
    set ttymouse=xterm2
    set nocompatible
endif

"Set style and color
syntax on 
colorscheme hemisu
highlight Normal ctermfg=NONE ctermbg=NONE
highlight LineNr ctermfg=black ctermbg=NONE
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
highlight CursorLineNR cterm=NONE ctermbg=NONE ctermfg=yellow guibg=NONE guifg=NONE
set cursorline

"Disable options
set noerrorbells
set nobackup
set noswapfile
set noundofile
set noshowcmd
set noshowmode

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

" Toggle relativenumber
map <silent> <F3> :set relativenumber!<CR>

"Turn off search highlight with enter key
nnoremap <silent> <CR> :noh<CR><CR>

"If buffer is named then autosave after 1 sec idle
set updatetime=1000
autocmd CursorHold * if @% != '' && @% != '!zsh' | silent! update | endif
   
"Paste in visual mode without copying
xnoremap p pgvy

"Operation repetition over visual section
xnoremap . :norm.<CR>

"Perform macro, saved in q register, over visual section using Q key
xnoremap Q :'<,'>:normal @q<CR>

"Automatic split equilization when vim is resized
autocmd VimResized * wincmd =

"Prevent overwritting main register
noremap c "_c
noremap cc "_cc
noremap C "_C
noremap x "_x
noremap X "_X
noremap <Del> "_x

"Visual selection yank doesn't go to the start
vmap y ygv<Esc>

"FZF mappings
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>
nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>
nmap <Leader>' :Marks<CR>
nmap <Leader>H :Helptags!<CR>
nmap <Leader>/ :Rg<Space>
nmap <Leader>: :History:<CR>
nmap <Leader>M :Maps<CR>
nmap <Leader>s :Filetypes<CR>

"Netrw configuration
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_altv = 1
let g:netrw_preview  = 1
map <F4> :Lexplore <CR>
