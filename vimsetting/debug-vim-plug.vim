" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
call plug#end()
augroup filetype_rust
    autocmd!
    autocmd BufReadPost *.hs setlocal filetype=haskell
augroup END

" Always draw sign column. Prevent buffer moving when adding/deleting sign.
set signcolumn=yes

let g:LanguageClient_serverCommands = {
    \ 'haskell': ['hie', '--lsp', '-d', '-l', '~/hie.log'],
\}
let g:LanguageClient_loggingLevel = 'DEBUG'
filetype plugin on
set omnifunc=syntaxcomplete#Complete

