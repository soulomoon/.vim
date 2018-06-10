"set shell=bash\ -i
set nocompatible
set showcmd
set hlsearch
set cmdheight=1
"soft wrap
"set nowrap
set linebreak
"set updatetime=350
set noshowmode
set encoding=utf8
set ts=4 sts=4 sw=4 expandtab
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
set relativenumber
"story command history
set history=10000
"syntax enable
set nolazyredraw
"set t_Co=256
"auto reload file
set autoread

filetype plugin indent on
syntax on
"On pressing tab, insert 4 spaces
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
"javascript set 2 as indent
autocmd Filetype javascript.jsx.html.rkt setlocal ts=2 sts=2 sw=2 expandtab

autocmd BufNewFile,BufRead *.conf set syntax=automake
autocmd BufNewFile,BufRead *.automake set syntax=automake
autocmd BufNewFile,BufRead *.am set syntax=automake
autocmd BufNewFile,BufRead *.make set syntax=automake
autocmd filetype crontab setlocal nobackup nowritebackup
" enable true color
set termguicolors

"set relativenumber
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪


if (has("nvim"))
    let g:python_host_prog = '~/.pyenv/versions/neovim2/bin/python'
    let g:python3_host_prog = '~/.pyenv/versions/neovim3/bin/python3'
endif
set foldmethod=syntax
