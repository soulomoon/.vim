" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
"
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
" Plug 'vim-airline/vim-airline-themes'
"Plug 'nathanaelkane/vim-indent-guides'
" Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

colorscheme onedark
