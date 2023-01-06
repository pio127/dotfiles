"Add plugins
call plug#begin()
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'morhetz/gruvbox'
    Plug 'itchyny/lightline.vim'
    Plug 'mg979/vim-visual-multi'
    Plug 'itchyny/vim-cursorword'
    Plug 'preservim/nerdtree'
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
set matchpairs+=<:>
set relativenumber

"Disable options
set noerrorbells
set nobackup
set noswapfile
set noundofile
set noshowcmd
set noshowmode

"Set options not compatible with nvim
if !has('nvim')
    set ttymouse=xterm2
    set nocompatible
endif

"Set style and color
syntax enable 
colorscheme gruvbox
highlight Normal ctermfg=NONE ctermbg=NONE
highlight LineNr ctermfg=237 ctermbg=NONE
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
highlight CursorLineNR cterm=NONE ctermbg=NONE ctermfg=yellow guibg=NONE guifg=NONE
set cursorline

"Default text formatting
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

"Set orgmode highlighting options
function OrgModeOptions()
    syn keyword orgTodo TODO
    syn keyword orgDone DONE
    hi orgTodo ctermfg=darkred
    hi orgDone ctermfg=darkgreen
endfunction

"Filetype specific formatting
autocmd Filetype c,cpp,h,hpp setlocal cindent
autocmd Filetype make setlocal noexpandtab
autocmd Filetype org call OrgModeOptions()

"Toggle relative number
map <silent> <F2> :set relativenumber! \| :echom "Relative number -> " . &relativenumber<CR>

"Toggle line wrapping
map <silent> <F3> :set wrap! \| :echom "Line wrapping -> " . &wrap<CR>

"Toggle file explorer
nnoremap <silent> <F4> :NERDTreeToggle<CR>

"Save current vim session
nnoremap <silent> <F5> :mksession! \| :echom "[QUICKSAVE] Vim session file created!"<CR>

"Turn off search highlight with enter key
nnoremap <silent> <CR> :noh<CR><CR>

"If buffer is named then autosave after 1 sec idle
set updatetime=1000
autocmd CursorHold * if @% != '' && @% != '!zsh' | silent! update | endif
   
"Visual selection yank doesn't go to the start
vmap y ygv<Esc>

"Paste in visual mode without copying
xnoremap p pgvy

"Operation repetition over visual section
xnoremap . :norm.<CR>

"Perform macro, saved in q register, over visual section using Q key
xnoremap Q :'<,'>:normal @q<CR>

"Automatic split equilization when vim is resized
autocmd VimResized * wincmd =

"Prevent overwritting main register with c and x variants
noremap c "_c
noremap cc "_cc
noremap C "_C
noremap x "_x
noremap X "_X

"Add fzf.vim mappings
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

"Exit insert mode using jk and prevent cursor to go back one character
inoremap jk <c-c>`^

"Save and restore view of buffers
augroup remember_folds
  autocmd!
  autocmd BufWinLeave *.* mkview
  autocmd BufWinEnter *.* silent! loadview
augroup END

"Use tmux buffer as a clipboard
let g:clipboard = {
    \   'name': 'tmux',
    \   'copy': {
    \      '+': ['tmux', 'load-buffer', '-'],
    \    },
    \   'paste': {
    \      '+': ['tmux', 'save-buffer', '-'],
    \   },
    \   'cache_enabled': 0,
    \ }

"Combine half-page navigation with cursor centering
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
