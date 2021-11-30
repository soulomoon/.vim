"due to conflicting with vim-tmux-navigato
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" Enable folding with the spacebar
nnoremap <space> za

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Clear highlighting on escape in normal mode
"nnoremap <esc> :noh<return><esc>
"nnoremap <esc>^[ <esc>^[

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

" nmap <silent> <A-l> :ALEFix<cr>
" nmap <silent> <A-b> :ALEGoToDefinition<cr>

"tagebar ########################################################################
nmap <F8> :TagbarToggle<CR>

" Easy align shortcut ########################################
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

map <C-t> :NERDTreeToggle<CR>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>eh :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" remap essc
inoremap jk <esc>
inoremap <esc> <nop>


" fzf
nmap <C-f> :BLines<CR>
nmap <C-p> :Commands<CR>
nmap <S-F> :Rg<Space>
nmap <C-m> :Maps<CR>

" which key
" let g:mapleader = ','
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
