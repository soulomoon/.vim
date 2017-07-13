set showcmd
set cmdheight=1
set hlsearch
filetype plugin indent on
"On pressing tab, insert 4 spaces
set expandtab
set ts=4 sts=4 sw=4
autocmd Filetype javascript.jsx setlocal ts=2 sts=2 sw=2

"list completion options
set wildmenu
set wildmode=longest:full,full

"Eliminating delays on ESC
set timeoutlen=10 ttimeoutlen=0
set splitbelow
set splitright

"line Number
set number

"story command history
"bug when set lines
"set lines=75
set history=10000

"syntax enable
set nolazyredraw
set t_Co=256
"
"ignore file in nerdtree
let NERDTreeIgnore = ['.pyc$']
