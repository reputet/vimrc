" ====================================================================
" Use vim-plug for plugin managing
" https://github.com/junegunn/vim-plug
" ====================================================================

" Automatically install vim-plug if it does not exists
" Curl is required!

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" For manual installation read the docs
" https://github.com/junegunn/vim-plug#installation
"
" or run the following command:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


" Specify a directory for plugins
" Avoid using standard Vim directory names like 'plugin'
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

" Better-whitespace
Plug 'ntpeters/vim-better-whitespace'

" Initialize plugin system
call plug#end()

" ====================================================================
" General settings
" ====================================================================

set number                     " show number of line
set relativenumber             " show relative numbers
set numberwidth=4              " set width of numbers 4 spaces
set colorcolumn=80             " show vertical line
syntax on                      " use syntax highlight
set mouse=a                    " use mouse
colorscheme ron                " color scheme
set clipboard=unnamedplus      " use system clipboard by default

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

" Get the nice 2-space YAML as the default when hitting "Enter" after the colon
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Set Grooby syntax if filename=Jenkinsfile
autocmd BufNewFile,BufRead Jenkinsfile set syntax=groovy

" Show the line and column number of the cursor position, separated by a comma
set ruler

" Make Vim deal with case-sensitive search intelligently.
" If you search for an all-lowercase string your search will be
" case-insensitive, but if one or more characters is uppercase the search will
" be case-sensitive.
set ignorecase
set smartcase

" Searching
set hlsearch                   " enable search highlight globally
set incsearch                  " show matches as soon as possible
set showmatch                  " show matching brackets when typing
set matchtime=10               " show the matching paren during 1 second

set showcmd                    " show partial command in status line

" When on, lines longer than the width of the window will wrap and display in
" continues on the next line.
set wrap


" ==============================
" Plugin settings
" ==============================

" -----------------------------------------------------------------------------

" NERD commenter

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" -----------------------------------------------------------------------------

" Vim-better-whitespace

" use green color for showing whitespaces
highlight ExtraWhitespace ctermbg=green

" not to show trailing whitespaces for these filetypes
let g:better_whitespace_filetypes_blacklist=
                                 \ ['diff', 'gitcommit', 'unite', 'qf', 'help']

" -----------------------------------------------------------------------------


" ==============================
" Mappings
" ==============================

" set leader key to the <Space>
let mapleader = " "
let maplocalleader = '\'

" inverse word letters
nnoremap <leader>u viw~e

" open .vimrc for edit in vertical split
nnoremap <leader>vo :vsplit $MYVIMRC<CR>:noh<CR>

" read (source) .vimrc file and apply changes right now
" :noh need for not highlighting the last searched results
nnoremap <leader>vs :source $MYVIMRC<CR>:noh<CR>

" open ~/.ssh/config for edit in vertical split
nnoremap <leader>vc :vsplit $HOME/.ssh/config<CR>:noh<CR>

" moving in wrap lines
nnoremap j gj
nnoremap k gk

" exit from insert mode
inoremap jk <ESC>

" remove characters without yanking to clipboard
nnoremap x "_x
nnoremap X "_X

" using modern regex patterns
nnoremap / /\v
vnoremap / /\v

" disable arrow keys in normal and insert modes
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" show error message to force using hjkl instead of arrow keys
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
nnoremap <F7> :tabprevious <CR>
nnoremap <F8> :tabnext <CR>

" abbreviations
iabbrev adn and
iabbrev ro or
iabbrev whlie while
iabbrev waht what
iabbrev fro for
iabbrev @@ outofspace230@gmail.com

" Execute python script
nnoremap <buffer> <F9> :exec '!clear; python' shellescape(@%, 1)<cr>
