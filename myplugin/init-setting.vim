set showcmd
filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

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


