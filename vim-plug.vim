" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
"language syntax################################################################################
"Plug 'hdima/python-syntax'
"Plug 'elzr/vim-json'
" full function
Plug 'tpope/vim-commentary'
Plug 'justinmk/vim-syntax-extra'
Plug 'rizzatti/dash.vim'
Plug 'whonore/Coqtail'
Plug 'liuchengxu/vim-which-key'
Plug 'jceb/vim-orgmode'
"Plug 'pangloss/vim-javascript'
"Plug 'digitaltoad/vim-pug'
" Plug 'sheerun/vim-polyglot'
Plug 'chrisbra/unicode.vim'
" Plug 'vim-scripts/AutoComplPop'
" Plug 'suan/vim-instant-markdown'
"Plug 'vim-scripts/indentpython.vim'
"Plug 'mxw/vim-jsx'
" Plug 'xolox/vim-misc'
" Plug 'rizzatti/dash.vim'
" nmap <silent> <leader>d <Plug>DashSearch
" Plug 'xolox/vim-easytags'
"utility ############################################################
" Plug 'tmhedberg/SimpylFold'
Plug 'junegunn/vim-easy-align'
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-multiple-cursors'
"" Plug 'heavenshell/vim-pydocstring'
Plug 'tpope/vim-abolish'
" Plug 'tweekmonster/startuptime.vim'
" Plug 'godlygeek/tabular'
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
" Plug 'majutsushi/tagbar'
Plug 'edkolev/tmuxline.vim'
"git##########
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'vim-scripts/gitignore'
"Plug 'mhinz/vim-signify'
"tmux
Plug 'tmux-plugins/vim-tmux'
Plug 'christoomey/vim-tmux-navigator'

"themes######################################################################
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'joshdick/onedark.vim', { 'branch': 'main' }
"Plug 'rakr/vim-one'
Plug 'ryanoasis/vim-devicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'flazz/vim-colorschemes'
"Plug 'chriskempson/base16-vim'
"Plug 'altercation/vim-colors-solarized'
" Plug 'kien/rainbow_parentheses.vim'
" Plug 'lifepillar/vim-solarized8'
Plug 'neovimhaskell/haskell-vim'
Plug 'LnL7/vim-nix'

" Plug 'roxma/nvim-yarp'
" Plug 'Shougo/deoplete.nvim'
call plug#end()
