set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set noswapfile
set nobackup
set undodir=~/.vim./undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8

let mapleader = " "

call plug#begin('~/.vim/plugged')
Plug 'nvim-telescope/telescope.nvim'
Plug 'jaredgorski/spacecamp'
call plug#end()

colorscheme spacecamp
