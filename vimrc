set nocompatible
set vb t_vb=
set ruler
set incsearch
set hidden
set history=1000
set wildmode=list:longest
set autoindent
set smartindent
set number

set encoding=utf-8
set showmode
set showcmd
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set backspace=indent,eol,start
set laststatus=2

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1

colorscheme sunburst
filetype plugin indent on

let g:CommandTMaxFiles=80000
let g:CommandTMaxHeight=10

" Shortcuts for moving between split windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nnoremap <leader>a :Ack -Q 
nnoremap <leader>v V`]
nnoremap <leader>w <C-w>v<C-w>l

" Keep Visual Mode when indenting
vnoremap < <gv
vnoremap > >gv

au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
