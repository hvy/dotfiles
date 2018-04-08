" install all plugins using vim-plug
call plug#begin('~/.vim/plugged')

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
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'majutsushi/tagbar'
Plug 'ap/vim-css-color'
" Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-jedi'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" deoplete
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:deoplete#enable_at_startup = 1


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

if has('nvim')
    let g:fzf_layout = { 'window': 'enew' }
    let g:fzf_layout = { 'window': '-tabnew' }
    let g:fzf_layout = { 'window': '10split enew' }
endif

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

" automatically start NERD Tree
" autocmd vimenter * NERDTree

" automatically close NERD Tree if it is the only split opened
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" do not show certain files in the tree
let NERDTreeIgnore = ['\.pyc$', '\.aux$']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" syntastic
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" officially recommended configs
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
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

" let g:airline_theme='deus'
" let g:airline_theme='wombat'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" clang-format
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

command! F ClangFormat
