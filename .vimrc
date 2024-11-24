"Load plugins
set runtimepath+=$HOME/.config/fzf
set runtimepath+=$HOME/.config/nvim

"Enable options
set autoindent
set background=dark
set backspace=2
set breakindent
set clipboard+=unnamedplus
set confirm
set cursorline
set encoding=utf-8
set expandtab
set ff=unix
set gdefault
set history=10000
set hlsearch
set ignorecase
set incsearch
set infercase
set laststatus=2
set matchpairs+=<:>
set mouse=a
set number
set relativenumber
set ruler
set shell=zsh
set shiftwidth=4
set shortmess=F
set showbreak=↳
set splitbelow
set splitright
set tabstop=4
set title
set updatetime=1000
set wildmenu
set wrap

"Disable options
set nobackup
set noerrorbells
set noshowcmd
set noshowmode
set noswapfile
set noundofile

"Set options for standard vim
if !has('nvim')
    set ttymouse=xterm2
    set nocompatible
endif

"Set custom syntax highlighting options
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

"Set custom vim statusline
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
set statusline+=%#Normal#
set statusline+=\ %f:%l
set statusline+=%{&modified?'[+]':''}
set statusline+=%=
set statusline+=\%y
set statusline+=\[%{&fileencoding?&fileencoding:&encoding}\]
set statusline+=\[%{&fileformat}\]

"Add orgmode highlighting options
function OrgModeOptions()
    syn keyword orgTodo TODO
    syn keyword orgDone DONE
    hi orgTodo ctermfg=darkred
    hi orgDone ctermfg=darkgreen
endfunction

"Set filetype specific formatting
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
nnoremap <silent> <S-Tab> :silent! cprev<CR>
nnoremap <silent> <Tab> :silent! cnext<CR>
noremap C "_C
noremap X "_X
noremap c "_c
noremap cc "_cc
noremap x "_x
vmap y ygv<Esc>
xnoremap . :norm.<CR>
xnoremap Q :'<,'>:normal @q<CR>
xnoremap p pgvy

"Change leader key to space
nnoremap <SPACE> <Nop>
let mapleader=" "

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
nmap <Leader>H :Helptags<CR>
nmap <Leader>r :Rg<Space>
nmap <Leader>: :History:<CR>
nmap <Leader>m :Maps<CR>
nmap <Leader>s :Filetypes<CR>
nmap <Leader>j :Jumps<CR>
nmap <Leader>c :Changes<CR>

"Add custom commands
command! ClearQuickfixList cexpr [] | cclose

"Add custom automatic commands
autocmd VimResized * wincmd =
autocmd CursorHold * if @% != '' && @% != '!zsh' | silent! update | endif
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview
