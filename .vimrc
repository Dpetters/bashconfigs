" the /g flag on :s substitutions by default
set gdefault

" Case insensitive search
set ignorecase

" Automatically detect file type
filetype plugin indent on

" Turn on all plugins?
filetype plugin on

" Set a ton of history. Default is 20
set history=1000

" Assume a dark background
set background=dark

" Syntax Highlighting
syntax on

" Tab settings
:set expandtab
:set tabstop=2
:set shiftwidth=4
" Change all existing tabs to match above settings
:retab

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

set tags=./tags;/
