"Add plugins
call plug#begin()
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'morhetz/gruvbox'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'itchyny/vim-cursorword'
    Plug 'justinmk/vim-sneak'
call plug#end()

"Enable options
set background=dark
set backspace=2
set breakindent
set clipboard+=unnamedplus
set confirm
set cursorline
set encoding=utf-8
set ff=unix
set gdefault
set history=10000
set hlsearch
set incsearch
set ignorecase
set infercase
set laststatus=2
set matchpairs+=<:>
set mouse=a
set number
set relativenumber
set ruler
set shell=zsh
set shortmess=F
set showbreak=↳
set splitbelow
set splitright
set title
set wildmenu
set wrap
set updatetime=1000

"Disable options
set nobackup
set noerrorbells
set noshowcmd
set noshowmode
set noswapfile
set noundofile

"Set options specific for only neovim or vim8/vim9
if has('nvim')
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
else
    set ttymouse=xterm2
    set nocompatible
endif

"Set style and color
syntax enable 
colorscheme gruvbox
highlight Normal        ctermfg=NONE   ctermbg=NONE
highlight LineNr        ctermfg=236    ctermbg=NONE
highlight CursorLine    ctermfg=NONE   ctermbg=NONE  cterm=NONE
highlight CursorLineNR  ctermfg=black  ctermbg=NONE  cterm=bold
highlight TabLineFill   ctermfg=NONE   ctermbg=NONE
highlight TabLine       ctermfg=white  ctermbg=NONE  cterm=NONE    
highlight TabLineSel    ctermfg=white  ctermbg=236   cterm=NONE
highlight Title         ctermfg=white  ctermbg=NONE

function! GitBranch()
  return system("{git symbolic-ref -q --short HEAD 2>/dev/null || git describe --tags 2> /dev/null} | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

let g:currentmode={
       \ 'n'  : 'NORMAL ',
       \ 'v'  : 'VISUAL ',
       \ 'V'  : 'V·Line ',
       \ "\<C-V>" : 'V·Block ',
       \ 'i'  : 'INSERT ',
       \ 'R'  : 'Replace ',
       \ 'Rv' : 'V·Replace ',
       \ 'c'  : 'Command ',
       \ 't'  : 'Terminal ',
       \}

set statusline=
set statusline+=\ %{toupper(g:currentmode[mode()])}
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#Normal#
set statusline+=\ %f
set statusline+=:%l
set statusline+=%=
set statusline+=%{&modified?'[+]':''}
set statusline+=\%y
set statusline+=\[%{&fileencoding?&fileencoding:&encoding}\]
set statusline+=\[%{&fileformat}\]

"Default text formatting
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

"Add orgmode highlighting options
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

"Add custom functional keys mappings
map <silent> <F2> :set relativenumber! \| :echom "Relative num -> " . &relativenumber<CR>
map <silent> <F3> :set wrap! \| :echom "Line wrapping -> " . &wrap<CR>

"Add custom mappings
inoremap jk <c-c>`^
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <silent> <CR> :noh<CR><CR>
noremap C "_C
noremap X "_X
noremap c "_c
noremap cc "_cc
noremap x "_x
vmap y ygv<Esc>
xnoremap . :norm.<CR>
xnoremap Q :'<,'>:normal @q<CR>
xnoremap p pgvy

"Add custom leader key mappings
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

"Add custom automatic commands
autocmd VimResized * wincmd =
autocmd CursorHold * if @% != '' && @% != '!zsh' | silent! update | endif
augroup remember_folds
  autocmd!
  autocmd BufWinLeave *.* mkview
  autocmd BufWinEnter *.* silent! loadview
augroup END
