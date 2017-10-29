" ====================================================================
" Use vim-plug for plugin managing
" https://github.com/junegunn/vim-plug
" ====================================================================
"
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
"
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

" ====================================================================
" General settings
" ====================================================================
set number                     " show number of line
set relativenumber             " show relative numbers
set numberwidth=4              " set width of numbers 4 spaces
set colorcolumn=80             " show vertical line
syntax on                      " use syntax hightlight
set mouse=a                    " use mouse
colorscheme ron                " colorscheme

" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab                  " use spaces, not tabs
set smarttab                   " make <tab> and <backspace> smarter

set scrolloff=4                " keep at least 5 lines above/below cursor
set sidescrolloff=4            " keep at least 5 columns left/right of cursor

set autoindent smartindent     " Set autoindent from one line to the next
set cursorline                 " Set cursorline

" Show the line and column number of the cursor position, separated by a comma
set ruler

" Make Vim deal with case-sensitive search intelligently. 
" If you search for an all-lowercase string your search will be
" case-insensitive, but if one or more characters is uppercase the search will
" be case-sensitive.
set ignorecase
set smartcase

" Searching...
set hlsearch                   " enable search highlight globally
set incsearch                  " show matches as soon as possible
set showmatch                  " show matching brackets when typing
set matchtime=10               " show the matching paren during 1 second

set showcmd                    " show partial command in status line

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" When on, lines longer than the width of the window will wrap and displayin
" continues on the next line.
set wrap

" ==============================
" Mappings
" ==============================

" set leader key to the ","
let mapleader = ","

" moving in wrap lines
nnoremap j gj
nnoremap k gk

" exit from insert mode
inoremap jk <ESC>

" using modern regex patterns
nnoremap / /\v
vnoremap / /\v

" disable arrow keys in normal mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" force using hjkl$
noremap <Up>       :echoerr "Use k instead!"<CR>$
noremap <Down>     :echoerr "Use j instead!"<CR>$
noremap <Left>     :echoerr "Use l instead!"<CR>$
noremap <Right>    :echoerr "Use h instead!"<CR>$

" moving at split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" changing tabs
noremap <F7> :tabprevious <CR>
noremap <F8> :tabnext <CR>
