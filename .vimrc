" Vim Settings

syntax on

" General
set noerrorbells              
set tabstop=4 softtabstop=4    
set expandtab                   
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set shiftwidth=4
set foldmethod=indent

" Keybindings
" == move between windows ==
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>
" == move windows ==
"noremap <c-H> <c-w><c-H>
"noremap <c-J> <c-w><c-J>
"noremap <c-K> <c-w><c-K>
"noremap <c-L> <c-w><c-L>

" Plugins
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'
Plug 'cocopon/iceberg.vim'
Plug 'lyuts/vim-rtags'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'

call plug#end()

colorscheme gruvbox
set background=dark
