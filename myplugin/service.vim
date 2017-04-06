"autodeletbuffer from airline
autocmd BufDelete * call airline#extensions#tabline#buflist#invalidate()

"auto reload vimrc
augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

augroup QuickfixStatus
	au! BufWinEnter quickfix setlocal 
		\ statusline=%t\ [%{g:asyncrun_status}]\ %{exists('w:quickfix_title')?\ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
augroup END

let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
