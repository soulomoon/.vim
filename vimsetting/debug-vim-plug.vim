" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
" Plug 'scrooloose/nerdtree'
" Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
" Plug 'neovimhaskell/haskell-vim'
call plug#end()

" Always draw sign column. Prevent buffer moving when adding/deleting sign.
"set signcolumn=yes
"filetype plugin on
"set omnifunc=syntaxcomplete#Complete

"let g:SuperTabDefaultCompletionType = "<c-n>"
"let g:ale_haskell_hie_executable = "hie-wrapper"




"""nerdtree ####################################################################################
""let NERDTreeIgnore = ['\.pyc$', '__pycache__']
""map <C-n> :NERDTreeToggle<CR>
""autocmd StdinReadPre * let s:std_in=1
""autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
""autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
""let g:NERDTreeChDirMode = 0
""let g:NERDTreeShowIgnoredStatus = 1
