"don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

execute pathogen#infect()
call pathogen#helptags()

" Turn on syntax highlighting
syntax on

" Disable arrow keys normal & insert
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
ino <Up> <NOP>
ino <Down> <NOP>
ino <Left> <NOP>
ino <Right> <NOP>

" Save file shortcut
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show line numbers
set number

"Enable awesome autcompletion menu
set wildmenu

" Enable mouse scroll
"set mouse=a

" Leader key
let mapleader=","

" Toggle relative numbmers
 function! NumberToggle()
   if(&relativenumber == 1)
    set relativenumber!
   else
    set relativenumber
   endif
 endfunc
 
 nnoremap <C-n> :call NumberToggle()<cr>
 
 autocmd InsertEnter * :set relativenumber!
 autocmd InsertLeave * :set relativenumber
 
" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=100
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=2
set expandtab
set noshiftround
set backspace=indent,eol,start

" Set scroll offset
set scrolloff=10

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
set list " To enable by default
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set background=dark
let base16colorspace=256
colorscheme base16-default-dark

" Enable powerline for  airline
let g:airline_powerline_fonts = 1
let g:indent_guides_enable_on_vim_startup = 0

" Handling files in current dir
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
map ,t :tabe <C-R>=expand("%:p:h") . "/" <CR>
map ,s :split <C-R>=expand("%:p:h") . "/" <CR>

" Enable Javascript syntax highlighting
let g:javascript_plugin_jsdoc = 1

" Highlight curent line number
hi CursorLineNr   term=bold ctermfg=Yellow gui=bold guifg=Yellow
hi LineNr ctermfg=gray

"  Emmet settings
let g:user_emmet_mode='inv'  "enable all functions, which is equal to

hi Normal ctermbg=none

" Ctrlp config
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


" Set Javascript indentation
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }

