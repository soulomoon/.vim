" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
"language syntax################################################################################
"Plug 'hdima/python-syntax'
"Plug 'elzr/vim-json'
" full function
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer --clang-completer --rust-completer --java-completer --js-completer --go-completer'}
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'python-mode/python-mode'
Plug 'tpope/vim-commentary'
"Plug 'davidhalter/jedi-vim'
"Plug 'pangloss/vim-javascript'
"Plug 'ternjs/tern_for_vim'
"Plug 'digitaltoad/vim-pug'
Plug 'sheerun/vim-polyglot'
Plug 'wlangstroth/vim-racket'
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown'
"Plug 'joonty/vdebug'
"Plug 'vim-scripts/indentpython.vim'
"Plug 'mxw/vim-jsx'
"Plug 'xolox/vim-easytags'
"Plug 'jelera/vim-javascript-syntax'
"Plug 'moll/vim-node'
"""django
"Plug 'jmcomets/vim-pony'
"Plug 'vim-scripts/django.vim'
"Plug 'tweekmonster/django-plus.vim'
"
"utility ############################################################
" Plug 'itchyny/vim-haskell-indent'
Plug 'tmhedberg/SimpylFold'
Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-multiple-cursors'
Plug 'heavenshell/vim-pydocstring'
Plug 'tpope/vim-abolish'
"Plug 'tweekmonster/startuptime.vim'
Plug 'godlygeek/tabular'
"Plug 'terryma/vim-expand-region'

"services ##############################
Plug 'jiangmiao/auto-pairs'
"Plug 'tpope/vim-obsession'
Plug 'tpope/vim-sensible'
Plug 'w0rp/ale'
"Plug 'vim-syntastic/syntastic'
"Plug 'skywind3000/asyncrun.vim'

"project ##################################o
"Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
"Plug 'majutsushi/tagbar'
"Plug 'edkolev/tmuxline.vim'

"git##########
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'vim-scripts/gitignore'
"Plug 'mhinz/vim-signify'
"tmux
Plug 'tmux-plugins/vim-tmux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'

"themes######################################################################
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'joshdick/onedark.vim'
"Plug 'rakr/vim-one'
Plug 'ryanoasis/vim-devicons'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'flazz/vim-colorschemes'
"Plug 'chriskempson/base16-vim'
"Plug 'altercation/vim-colors-solarized'
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1
Plug 'lifepillar/vim-solarized8'
Plug 'neovimhaskell/haskell-vim'

" Plug 'roxma/vim-hug-neovim-rpc'
" Plug 'roxma/nvim-yarp'
" Plug 'Shougo/deoplete.nvim'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh'
    \ }

call plug#end()

set signcolumn=yes
filetype plugin on
set omnifunc=syntaxcomplete#Complete

let g:LanguageClient_serverCommands = {
  \ 'haskell' : ['hie', '--lsp', '-d', '-l', '~/hie.log']
  \ }

let g:ale_fixers = { 'javascript': ['eslint'], 'haskell': ['brittany'] }
let g:ale_haskell_brittany_options = "--write-mode inplace"
nmap <silent> <A-l> :ALEFix<cr>
"vimux
let g:VimuxUseNearest = 0

"Plug 'heavenshell/vim-pydocstring'
let g:pydocstring_enable_mapping = 0
nmap <silent> <C-m> <Plug>(pydocstring)
"YCM
" let g:ycm_cache_omnifunc = 0
let g:ycm_python_binary_path = 'python'
"let g:ycm_complete_in_comments = 1
" let g:ycm_use_ultisnips_completer = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
" let g:ycm_add_preview_to_completeopt = 1
" let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0
let $PYTHONPATH .= getcwd()
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_semantic_triggers = {'haskell' : ['re!.']}
" let g:ycm_semantic_triggers = {'haskell' : ['re!\w\.']}
" ale
" disable style lint
let g:airline#extensions#ale#enabled = 1
let g:ale_python_pylint_options =  '--disable=C'
let g:ale_completion_enabled = 1

" better key bindings for ultisnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"airline configuration#######################################################
"human readeable linesnumber
"function! MyLineNumber()
"	return substitute(line('.'), '\d\@<=\(\(\d\{3\}\)\+\)$', ',&', 'g'). ' | '.
"				\    substitute(line('$'), '\d\@<=\(\(\d\{3\}\)\+\)$', ',&', 'g')
"endfunction
"call airline#parts#define('linenr', {'function': 'MyLineNumber', 'accents': 'bold'})

let g:airline_theme = "onedark"
let g:airline_detect_modified=1
let g:airline_detect_spell=1
let g:airline_inactive_collapse=1
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
let g:airline#extensions#tabline#enabled = 1
"let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
let g:airline_skip_empty_sections = 1
" extention --------------
let g:airline#extensions#tagbar#enabled = 1
"let g:airline_section_x = (tagbar, filetype, virtualenv)
"let g:airline_section_z = airline#section#create(['%{ObsessionStatus(''$'', '''')}', 'windowswap', '%3p%% ', 'linenr', ':%3v '])
"autodeletbuffer from airline
autocmd BufDelete * call airline#extensions#tabline#buflist#invalidate()

"tagebar ########################################################################
"nmap <F8> :TagbarToggle<CR>

"nerdtree ####################################################################################
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
let g:NERDTreeChDirMode = 0
let g:NERDTreeShowIgnoredStatus = 1

"vim-nerdtree-syntax-highlight'###########
"let g:NERDTreeLimitedSyntax = 1
"let g:NERDTreeSyntaxDisableDefaultExtensions = 1
"let g:NERDTreeDisableExactMatchHighlight = 1
"let g:NERDTreeDisablePatternMatchHighlight = 1
"let g:NERDTreeSyntaxEnabledExtensions = ['c', 'h', 'c++', 'php', 'rb', 'js', 'css'] " example
"vim-pydocstring


"simple fold#######################################################################
let g:SimpylFold_docstring_preview = 1

"pymode ############################################################
"let g:UltiSnipsUsePythonVersion = 3
"let g:pymode_python = 'python3'
let g:pymode_virtualenv = 1
let g:pymode_folding = 1
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'
let g:pymode_breakpoint = 1
""rope
let g:pymode_rope = 1
let g:pymode_rope_goto_definition_cmd = 'e'
let g:pymode_rope_completion = 0
let g:pymode_options_max_line_length = 79
"
""quick fix
"let g:pymode_lint_cwindow = 1
"let g:pymode_lint_signs = 1
""pep8 compatible indent
"let g:pymode_indent = 1
""syntax
let g:pymode_syntax_slow_sync = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax = 1

"vflazz/vim-colorscheme ###########################################
"let g:solarized_termcolors=256
"let base16colorspace=256

"one
"let g:one_allow_italics = 1 " I love italic for comments
set background=dark
execute "set background=".$BACKGROUND
"colorscheme solarized8
colorscheme onedark
"let g:onedark_termcolors=256
let g:onedark_terminal_italics = 1
"colorscheme base16-onedark
" Easy align shortcut ########################################
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" fugitive
autocmd QuickFixCmdPost *grep* cwindow

"Plug 'terryma/vim-multiple-cursors'
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_key='<C-g>'
let g:multi_cursor_next_key='<C-g>'

"airblade/vim-gitgutter
"let g:gitgutter_highlight_lines = 1

"ryanoasis/vim-devicons####################
let g:WebDevIconsOS = 'Darwin'
let g:webdevicons_conceal_nerdtree_brackets = 1 
"let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
" let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" let g:DevIconsEnableFoldersOpenClose = 1
"let g:webdevicons_enable_nerdtree = 1
" let g:DevIconsEnableFolderExtensionPatternMatching = 1
" let g:WebDevIconsUnicodeGlyphDoubleWidth = 1

" haskell
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1       
