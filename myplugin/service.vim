"auto reload vimrc
augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vim/vimrc
augroup END
