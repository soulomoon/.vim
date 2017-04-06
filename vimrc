runtime myplugin/vim-plug.vim
runtime myplugin/key-map.vim
runtime myplugin/init-setting.vim

let g:SimpylFold_docstring_preview = 1
let g:airline#extensions#tabline#enabled = 1

set laststatus=2
"Eliminating delays on ESC
set timeoutlen=1000 ttimeoutlen=0
set splitbelow
set splitright

"autodeletbuffer from airline
autocmd BufDelete * call airline#extensions#tabline#buflist#invalidate()

"auto reload vimrc
augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

"let g:pymode_python = 'python3'
let g:pymode_rope_completion = 0
