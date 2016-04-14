""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Currently using:
"   - Pathogen
"   - NERD Tree
"   - CtrP + CtrlPTag (ctags)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader Key
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = "\<Space>" " Remap the leader key to the Space bar

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Pathogen
execute pathogen#infect()

" NERD Tree
autocmd vimenter * NERDTree   " Automatically start NERD Tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  " Automatically close NERDTree if it is the only window

" CTags / CtrPTag
" nnoremap <SPACE> <nop>
nnoremap <leader>. :CtrlPTag<cr>

" vim-instant-markdown - Markdown preview in browser
" https://github.com/suan/vim-instant-markdown
" let g:instant_markdown_slow = 1  " Add a delay between each markdown update
" let g:instant_markdown_autostart = 0  " Do not start markdown preview
" automatically
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" General
syntax on               " syntax highlight
filetype plugin indent on
" filetype plugin on
highlight ColorColumn ctermbg=7 " color it gray

" Automatically remove trailing whitespaces
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre * :%s/\s\+$//e

" Set
set runtimepath^=~/.vim/bundle/ctrlp.vim
set encoding=utf-8
set relativenumber      " show line number
set number
set tabstop=2           " number of visual spaces per tab
set shiftwidth=2        " number of spaces in tab when editing
set smarttab
set expandtab           " tabs are spaces
set clipboard=unnamed
set showcmd             " show command in bottom bar
set wildmenu            " visual autocompletion for command menu
set showmatch           " show matching [{()}]
set smartindent         " smart indent
set mouse=a             " allow mouse scroll in iTerm
set colorcolumn=100     " show vertical line
set title               " change the title of the terminal
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set showcmd
set backspace=2
" set cursorline        " highlight current line

" Map
inoremap jk <ESC>l
inoremap jj <ESC>
inoremap kk <ESC>
nnoremap j gj
nnoremap k gk
nnoremap ; :
nnoremap : ;
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>jk
map <C-l> <C-w>l

" Map - to move text down and _ to move text up
nnoremap - :m+<cr>==
nnoremap _ :m-2<cr>==
vnoremap - :m '>+1<cr>gv=gv
vnoremap _ :m '<-2<cr>gv=gv

vnoremap . :normal .<cr>

" Automatically insert closing bracket
" inoremap { {}<Left>
" inoremap {<CR> {<CR>}<Esc>O
" inoremap {{ {
" inoremap {} {}
