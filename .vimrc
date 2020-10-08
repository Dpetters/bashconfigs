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

" Highlight all occurences of word under cursor
:autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

" Color column to help stay within characters per line limit "
set colorcolumn=121

" Wrap 
set tw=119
nnoremap Q gqip

" Turn off bell sound
set vb
set t_vb=

set number
set clipboard=unnamed

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

packadd! dracula
syntax enable
colorscheme dracula
