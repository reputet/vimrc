" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"  The plugin provides mappings to easily delete, change and add such
"  surroundings in pairs.
Plug 'tpope/vim-surround'

" It automatically prints number of match #N out of M matches in search
Plug 'henrik/vim-indexed-search'

" Smooth scrolling
" I've not decided which plugin i like more
" Plug 'vim-scripts/Smooth-Scroll'
Plug 'yuttie/comfortable-motion.vim'

" Nerd commenter
Plug 'scrooloose/nerdcommenter'

" Initialize plugin system
call plug#end()

set number " Show number of line
set relativenumber " Show relative numbers
syntax on " Use syntax hightlight
colorscheme ron
inoremap jk <ESC>

" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab                   " use spaces, not tabs
set smarttab                    " make <tab> and <backspace> smarter

set scrolloff=4                 " keep at least 5 lines above/below cursor
set sidescrolloff=4             " keep at least 5 columns left/right of cursor

set autoindent smartindent      " Set autoindent from one line to the next
set cursorline                  " Set cursorline

" Show the line and column number of the cursor position, separated by a comma
set ruler

" Using modern regex patterns
nnoremap / /\v
vnoremap / /\v

" Make Vim deal with case-sensitive search intelligently. If you search for an
" all-lowercase string your search will be case-insensitive, but if one or more
" characters is uppercase the search will be case-sensitive.
set ignorecase
set smartcase

" searching...
set hlsearch                   " enable search highlight globally
set incsearch                  " show matches as soon as possible
set showmatch                  " show matching brackets when typing

" When on, lines longer than the width of the window will wrap and displayin
" continues on the next line.
set wrap

" Moving in wrap lines
nnoremap j gj
nnoremap k gk

" Show vertical line
set colorcolumn=80

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" force using hjkl$
noremap <Up>       :echoerr "Use k instead!"<CR>$
noremap <Down>     :echoerr "Use j instead!"<CR>$
noremap <Left>     :echoerr "Use l instead!"<CR>$
noremap <Right>    :echoerr "Use h instead!"<CR>$

" Set leader key to the ","
let mapleader = ","

" Moving at split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Using mouse
set mouse=a

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

noremap <F7> :tabprevious <CR>
noremap <F8> :tabnext <CR>

set showcmd " Show partial command in status line
