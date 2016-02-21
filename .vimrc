set encoding=utf-8
set number              " show line number
set tabstop=2           " number of visual spaces per tab
set shiftwidth=2        " number of spaces in tab when editing
set smarttab            " 
set expandtab           " tabs are spaces
set clipboard=unnamed
set showcmd             " show command in bottom bar
set wildmenu            " visual autocompletion for command meun
set showmatch           " show matching [{()}]
set smartindent         " smart indent
set mouse=a             " allow mouse scroll in iTerm
set colorcolumn=100     " show vertical line
set title               " change the title of the terminal
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" set cursorline          " highlight current line

filetype plugin indent on
syntax on               " syntax highlight
highlight ColorColumn ctermbg=7 " color it gray
" color jellybeans

" Exit from interstion mode using jk
inoremap jk <ESC>l
inoremap jj <ESC>
inoremap kk <ESC>

" Remap the leader key to the Space bar
let mapleader = "\<Space>"

" Automatically remove trailing whitespaces for certain file types on save
autocmd BufWritePre *.py :%s/\s\+$//e

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Map ; to :
nnoremap ; :
nnoremap : ;

