" install all plugins using vim-plug
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'kien/ctrlp.vim'
"Plug 'lambdalisue/vim-pyenv'
"  Plug 'davidhalter/jedi-vim'
Plug 'rhysd/vim-clang-format'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'tell-k/vim-autopep8'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'
" Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
if has('nvim')
  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-clang'

" Plug 'mkitt/tabline.vim'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" deoplete
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:deoplete#enable_at_startup = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" deoplete - clang
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-5.0/lib/libclang.so'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" fzf
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <Leader>a :Ag<Space>
nnoremap <Leader>f :GFiles<CR>
nnoremap <Leader>F :Files<CR>
nnoremap <Leader>l :BLines<CR>
nnoremap <Leader>L :Lines<CR>
nnoremap <Leader>' :Marks<CR>
nnoremap <Leader>t :BTags<CR>
nnoremap <Leader>T :Tags<CR>

let g:fzf_buffers_jump = 1
let g:fzf_tags_command = 'ctags -R'
let g:fzf_layout = { 'down': '~100%' }

" if has('nvim')
"     let g:fzf_layout = { 'window': 'enew' }
"     let g:fzf_layout = { 'window': '-tabnew' }
"     let g:fzf_layout = { 'window': '10split enew' }
" endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" rust-lang
"
" Includes RustFmt which depends on
" https://crates.io/crates/rustfmt-nightly
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

command! R RustFmt

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" ctrlp
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set runtimepath^=~/.vim/bundle/ctrlp.vim
" nnoremap <leader>t :CtrlPTag<cr>
" nnoremap <C-t> :CtrlPTag<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" nerdtree
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <silent> <Leader>e :NERDTreeToggle<cr>
nnoremap <silent> <Leader>w :NERDTreeFind<cr>

" automatically start NERD Tree
" autocmd vimenter * NERDTree

" automatically close NERD Tree if it is the only split opened
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" do not show certain files in the tree
let NERDTreeIgnore = ['\.pyc$', '\.aux$']

" Note: :NERTDTreeFind to open the current buffer in the NERDTree

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" syntastic
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" officially recommended configs
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" let g:syntastic_python_checkers = ['flake8']
let g:syntastic_mode_map = {'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': []}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" airline, airline-theme
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:airline_theme='atomic'
"let g:airline_theme='base16'
" let g:airline_theme='deus'
" let g:airline_theme='wombat'
" let g:airline#extensions#tabline#buffer_idx_mode=1
" let g:airline#extensions#tabline#left_sep = '\'
" nnoremap <C-p> <Plug>AirlineSelectPrevTab
" let g:airline#extensions#tagbar#enabled = 1
" let g:airline#extensions#tagbar#flags = ''
" let g:airline#extensions#tagbar#flags = 'f'
" let g:airline#extensions#tagbar#flags = 's'
" let g:airline#extensions#tagbar#flags = 'p'
" let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#show_buffers = 0
"let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
" let g:airline#extensions#tabline#show_splits = 0

" let g:airline#extensions#tabline#enabled = 1

nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

" Show file name as tab title
" let g:airline#extensions#tabline#formatter = 'unique_tail'

" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline#extensions#tabline#buffer_idx_format = {
"     \ '0': '0 ',
"     \ '1': '1 ',
"     \ '2': '2 ',
"     \ '3': '3 ',
"     \ '4': '4 ',
"     \ '5': '5 ',
"     \ '6': '6 ',
"     \ '7': '7 ',
"     \ '8': '8 ',
"     \ '9': '9 '
"     \}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" clang-format
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

command! F ClangFormat

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" indentLine
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:indentLine_color_term = 'gray'
