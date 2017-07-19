" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'python-mode/python-mode'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'skywind3000/asyncrun.vim'
call plug#end()

"NerdTree ####################################################################
let NERDTreeIgnore = ['\.pyc$']
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | exec 'NERDTree' | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"pymode ############################################################

"let g:UltiSnipsUsePythonVersion = 3
"let g:pymode_python = 'python3'
"let g:pymode_virtualenv = 1
"let g:pymode_folding = 1
"let g:pymode_run = 1
"let g:pymode_run_bind = '<leader>r'
"let g:pymode_breakpoint = 1
"rope
"let g:pymode_rope_goto_definition_bind = '<C-c>g'
"let g:pymode_rope_goto_definition_cmd = 'e'
"let g:pymode_rope_show_doc_bind = '<C-c>d'
"let g:pymode_rope = 1
"let g:pymode_rope_autoimport=1
"let g:pymode_rope_completion = 0
"
""quick fix
"let g:pymode_lint_cwindow = 1
"let g:pymode_lint_signs = 1
""pep8 compatible indent
"let g:pymode_indent = 1
""syntax
"let g:pymode_syntax_slow_sync = 1
"let g:pymode_syntax_all = 1
"let g:pymode_syntax = 1

"vflazz/vim-colorscheme ###########################################
colorscheme solarized

augroup QuickfixStatus
  au! BufWinEnter quickfix setlocal
      \ statusline=%t\ [%{g:asyncrun_status}]\ %{exists('w:quickfix_title')?\ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
augroup END


