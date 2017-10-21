set nocompatible
set showcmd
set hlsearch
set cmdheight=1
filetype plugin indent on
syntax on
set encoding=utf8
set ts=4 sts=4 sw=4
"On pressing tab, insert 4 spaces
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
"javascript set 2 as indent
autocmd Filetype javascript.jsx.html setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab
"list completion options
set wildmenu
set wildmode=longest:full,full

"Eliminating delays on ESC
"set timeoutlen=10 ttimeoutlen=0
set splitbelow
set splitright

"line Number
set number

"story command history
set history=10000

"syntax enable
set nolazyredraw
set t_Co=256

"auto reload file
set autoread
