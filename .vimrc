syntax on

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

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

# Plugged install
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
