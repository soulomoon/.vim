set nocompatible
set showcmd
set hlsearch
set cmdheight=1
"soft wrap
set wrap
set linebreak
set nolist
"set updatetime=350
set noshowmode
set encoding=utf8
set ts=4 sts=4 sw=4
"list completion options
set wildmenu
set wildmode=longest:full,full
set splitbelow
set splitright
"case
"set ignorecase
set smartcase
"line Number
set number
"story command history
set history=10000
"syntax enable
set nolazyredraw
set t_Co=256
"auto reload file
set autoread

filetype plugin indent on
syntax on
"On pressing tab, insert 4 spaces
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
"javascript set 2 as indent
autocmd Filetype javascript.jsx.html.rkt setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab

autocmd BufNewFile,BufRead *.conf set syntax=automake
autocmd BufNewFile,BufRead *.automake set syntax=automake
autocmd BufNewFile,BufRead *.am set syntax=automake
autocmd BufNewFile,BufRead *.make set syntax=automake
