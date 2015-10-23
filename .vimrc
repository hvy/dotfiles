set encoding=utf-8
set number              " show line number
set tabstop=2           " number of visual spaces per tab
set shiftwidth=2        " number of spaces in tab when editing
set smarttab            " 
set expandtab           " tabs are spaces
set clipboard=unnamed
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocompletion for command meun
set showmatch           " show matching [{()}]
set smartindent         " smart indent
filetype plugin indent on

set colorcolumn=120      " show vertical line

" Search
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

syntax on               " syntax highlight

" color jellybeans

" Exit from interstion mode using jk
inoremap jk <ESC>

" Remap the leader key to the Space bar
let mapleader = "\<Space>"

" Automatically remove trailing whitespaces for certain file types on save
autocmd BufWritePre *.py :%s/\s\+$//e

