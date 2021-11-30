source $HOME/.config/nvim/vim-plug/plugins.vim

syntax on

set t_Co=256

let g:airline_powerline_fonts = 1

let mapleader = ","

" configure fzf
if (executable('ag'))
    let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
endif
nnoremap <C-P> :Files<CR>

" NERDTree
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:NERDTreeQuitOnOpen=1

" make lispy things pretty
let g:rainbow_active = 1

" Pythonic gudniss
" autocmd BufWritePost *.py call Flake8()
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
let python_highlight_all=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" JavaScript - The Cash Maker
let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0

" teach emmet the ways of jsx
let g:user_emmet_settings = {
\  'javascript': {
\    'extends': 'jsx',
\  },
\  'typescript': {
\    'extends': 'tsx',
\  },
\}

" on with the show
set autochdir
set modelines=0
set nobackup
set clipboard+=unnamed
set hidden
set mouse=a
set noerrorbells " don't speak
set novisualbell " don't blink
set vb t_vb=     " not even for a second
set autowriteall
set whichwrap=b,s,<,>,~
 "            | | | | |
 "            | | | | |
 "            | | | | |
 "            | | | | +-- "~" Normal
 "            | | | +-- <Right> Normal and Visual
 "            | | +-- <Left> Normal and Visual
 "            | +-- <Space> Normal and Visual
 "            +-- <BS> Normal and Visual
set cpoptions=aABceFsmq
 "            |||||||||
 "            ||||||||+-- When joining lines, leave the cursor
 "            |||||||      between joined lines
 "            |||||||+-- When a new match is created (showmatch)
 "            ||||||      pause for .5
 "            ||||||+-- Set buffer options when entering the
 "            |||||      buffer
 "            |||||+-- :write command updates current file name
 "            ||||+-- Automatically add <CR> to the last line
 "            |||      when using :@r
 "            |||+-- Searching continues at the end of the match
 "            ||      at the cursor position
 "            ||+-- A backslash has no special meaning in mappings
 "            |+-- :write updates alternative file name

" formatting
set encoding=utf-8
set fileencoding=utf-8
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set shiftround
set nowrap
set autoindent
set smartindent
set smartcase

set noswapfile
set nobackup
set scrolloff=3
set showmode
set showcmd
set backspace=indent,eol,start
set wildmenu
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
set wildmode=list:longest

" ui settings
set guifont=Ubuntu\ Mono\ 12
colorscheme dracula
set laststatus=2     " always show the status line
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
 "             | | | | |  |   |      |  |     |    |
 "             | | | | |  |   |      |  |     |    + current column
 "             | | | | |  |   |      |  |     +-- current line
 "             | | | | |  |   |      |  +-- current % into file
 "             | | | | |  |   |      +-- current syntax in square brackets
 "             | | | | |  |   +-- current fileformat
 "             | | | | |  +-- number of lines
 "             | | | | +-- preview flag in square brackets
 "             | | | +-- help flag in square brackets
 "             | | +-- readonly flag in square brackets
 "             | +-- rodified flag in square brackets
 "             +-- full path to file in the buffer
set ttyfast          " faster redrawing
set lazyredraw       " do not redraw while running macros
set cursorline       " find the current line quickly
set linespace=0
set list
set listchars=tab:>-,trail:-
set nostartofline    " leave my cursor where it was
set number           " turn on line numbers
set numberwidth=4    " We are good up to 9999 lines
set report=0         " tell us when anything is changed via :...
set ruler            " Always show current positions along the bottom

set laststatus=2     " always show the status line

set relativenumber
set undofile
set undodir=~/.config/nvim/undodir

