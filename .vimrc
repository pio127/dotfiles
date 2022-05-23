"Add plugins 
call plug#begin()
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'mg979/vim-visual-multi'
    Plug 'tpope/vim-fugitive'
    Plug 'justinmk/vim-sneak'
    Plug 'noahfrederick/vim-hemisu'
    Plug 'morhetz/gruvbox'
    Plug 'itchyny/lightline.vim'
    Plug 'bfrg/vim-cpp-modern'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'preservim/nerdtree'
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
set ttymouse=xterm2
set clipboard=unnamedplus
set history=10000
set shell=zsh
set showbreak=↳
set ff=unix
set backspace=2
set shortmess=F

"Set style and color
syntax on 
colorscheme hemisu
highlight Normal ctermfg=NONE ctermbg=NONE
highlight LineNr ctermfg=black ctermbg=NONE
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
highlight CursorLineNR cterm=NONE ctermbg=NONE ctermfg=yellow guibg=NONE guifg=NONE
set cursorline

"Disable options
set nocompatible
set norelativenumber
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

"Turn off search highlight with enter key
nnoremap <silent> <CR> :noh<CR><CR>

"If buffer is named then autosave after 1 sec idle
set updatetime=1000
autocmd CursorHold,CursorHoldI * if @% != '' && @% != '!zsh' | update | endif

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

"Vim fugitive mappings
nmap <Leader>gs :Git<CR>

"Open nerd tree at the current file or close nerd tree if pressed again
nnoremap <silent> <expr> <Leader>n g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : 
       \ bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

"Show hidden files in nerd tree by default
let g:NERDTreeShowHidden=1


"                 Useful vanilla vim mappings:
" | Ctrl-o (insert)       | Change to command mode once. 
" | Ctrl-a/x              | Increment/Decrement value.
" | Ctrl-r= (insert)      | Calculate simple math expression.
" | gi                    | Start insert in last insert place.
" | o (visual)            | Go to the other end.
" | Ctrl-p/n (insert)     | Basic word completion upward/downward.
" | Ctrl-e (insert)       | Cancel word completion.
" | Ctrl-y (insert)       | Accept word completion.
" | Ctrl-x Ctrl-l (insert)| Whole line completion.
" | Ctrl-x Ctrl-o (insert)| Syntax-aware omnicompletion.
