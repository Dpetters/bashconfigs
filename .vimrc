" the /g flag on :s substitutions by default
set gdefault

" Case insensitive search
set ignorecase

" ,y saves current unnamed buffer to ~/reg.txt file.
" ,p / ,P read from ~/reg.txt and paste using p/P.
vmap <silent> ,y y:new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/reg.txt<CR>
nmap <silent> ,y :new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/reg.txt<CR>
map <silent> ,p :sview ~/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>p
map <silent> ,P :sview ~/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>P

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
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
" Change all existing tabs to match above settings
retab

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

set tags=./tags;/

let g:JavaImpPaths = "/opt/oracle/java/jdk1.7.0_21"
let g:JavaImpDataDir = "$HOME/vim/JavaImp"

" Highlight all occurences of word under cursor
:autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

" Color column to help stay within characters per line limit "
set colorcolumn=121

" Wrap 
set tw=119
nnoremap Q gqip
