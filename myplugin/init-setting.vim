set showcmd
set hlsearch
filetype plugin indent on
" On pressing tab, insert 4 spaces
"set expandtab
set ts=2 sts=2 sw=2
autocmd Filetype javascript.jsx setlocal ts=2 sts=2 sw=2

" list completion options
set wildmenu
set wildmode=longest:full,full

" set enable AsyncRun to access zshrc
set shellcmdflag=-ci

"enable airline to show status
set laststatus=2
"Eliminating delays on ESC
set timeoutlen=1000 ttimeoutlen=0
set splitbelow
set splitright

"line Number
set number
"story command history
set lines=75
set history=1000
"reflash edit
set autoread
