" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
"project and language
Plug 'python-mode/python-mode'
Plug 'jmcomets/vim-pony'
"Plug 'joonty/vdebug'
"Plug 'vim-scripts/indentpython.vim'
"Plug 'mxw/vim-jsx'
"Plug 'xolox/vim-easytags'

"utility
Plug 'tmhedberg/SimpylFold'
Plug 'junegunn/vim-easy-align'
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer --clang-completer' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

"services ##############################
Plug 'jiangmiao/auto-pairs'
Plug 'skywind3000/asyncrun.vim'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-sensible'
Plug 'vim-syntastic/syntastic'

"UI ##################################
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'

" Initialize plugin system
call plug#end()


"airline configuration#######################################################
"human readeable linesnumber
function! MyLineNumber()
  return substitute(line('.'), '\d\@<=\(\(\d\{3\}\)\+\)$', ',&', 'g'). ' | '.
    \    substitute(line('$'), '\d\@<=\(\(\d\{3\}\)\+\)$', ',&', 'g')
endfunction
call airline#parts#define('linenr', {'function': 'MyLineNumber', 'accents': 'bold'})
"windowsNumber
function! WindowNumber(...)
    let builder = a:1
    let context = a:2
    call builder.add_section('airline_b', '%{tabpagewinnr(tabpagenr())}')
    return 0
endfunction

call airline#add_statusline_func('WindowNumber')
call airline#add_inactive_statusline_func('WindowNumber')

let g:airline_theme = "solarized"
let g:airline_detect_modified=1
let g:airline_detect_spell=1
let g:airline_inactive_collapse=1
let g:airline_powerline_fonts = 1
set laststatus=2
set noshowmode
let g:bufferline_echo = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
let g:airline_skip_empty_sections = 1
" extention --------------
let g:airline#extensions#tagbar#enabled = 1
"let g:airline_section_x = (tagbar, filetype, virtualenv)
let g:airline_section_z = airline#section#create(['%{ObsessionStatus(''$'', '''')}', 'windowswap', '%3p%% ', 'linenr', ':%3v '])
"autodeletbuffer from airline
autocmd BufDelete * call airline#extensions#tabline#buflist#invalidate()


"tagebar ########################################################################
nmap <F8> :TagbarToggle<CR>


"NerdTree ####################################################################################
let NERDTreeIgnore = ['\.pyc$']
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

augroup QuickfixStatus
    au! BufWinEnter quickfix setlocal
                \ statusline=%t\ [%{g:asyncrun_status}]\ %{exists('w:quickfix_title')?\ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
augroup END


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
"let g:pymode_rope_goto_definition_bind = '<C-c>g'
let g:pymode_rope_goto_definition_cmd = 'e'
"let g:pymode_rope_show_doc_bind = '<C-c>d'
"let g:pymode_rope = 1
"let g:pymode_rope_autoimport=1
let g:pymode_rope_completion = 0
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

"AsyncRun ########################################################
" set enable AsyncRun to access zshrc
"Bug by setting shell to zsh vim-fugitive would hangs, diable it
"set shellcmdflag=-ci

"vflazz/vim-colorscheme ###########################################
colorscheme solarized

" Easy align shortcut ########################################
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"joonty/vdebug'#####################################################
"    let g:vdebug_options= {
"    \    "port" : 9000,
"    \    "server" : 'localhost',
"    \    "timeout" : 20,
"    \    "on_close" : 'detach',
"    \    "break_on_open" : 1,
"    \    "ide_key" : '',
"    \    "path_maps" : {},
"    \    "debug_window_level" : 0,
"    \    "debug_file_level" : 0,
"    \    "debug_file" : "test.txt",
"    \    "watch_window_style" : 'expanded',
"    \    "marker_default" : '⬦',
"    \    "marker_closed_tree" : '▸',
"    \    "marker_open_tree" : '▾'
"    \}

"enable quickfix to get all output
autocmd BufEnter * set errorformat&

# fugitive
autocmd QuickFixCmdPost *grep* cwindow
