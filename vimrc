" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ================ Config ====================

" Vim Settings
set notimeout
set ttimeout
set timeoutlen=100
set lazyredraw " Vim loves to redraw the screen during things it probably doesn't need to—like in the middle of macros.
let g:session_directory = '~/.vim/sessions' " Vim sessions directory

" Colors folder
colorscheme zenburn
if &term =~ '256color'
  set t_ut=
endif

" Searching
set hlsearch " hilight searches by default
set incsearch " find the next match as we type the search
set ignorecase " Ignore case when searching...
set smartcase " ...unless we type a capital
set viminfo='100,f1 " Save up to 100 marks, enable capital marks

" Some stuff to get the mouse going in term
set mouse=a
set mousemodel=popup

" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

" Copy/Paste/Cut
set clipboard=unnamedplus

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Spelling
set spell spelllang=en_us

" ================ Turn Off Swap Files ==============

"" Directories for swp files
set noswapfile
set nobackup
set nowb

set fileformats=unix,dos,mac
set shell=/bin/bash

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  set undodir=~/.vim/undodir
  set undofile
endif

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab

filetype plugin indent on
autocmd BufNewFile,BufRead *.cql set filetype=cql
autocmd BufNewFile,BufRead *.tpl set filetype=html
autocmd BufNewFile,BufRead *.md set filetype=md
autocmd BufNewFile,BufRead Dockerfile set filetype=dockerfile
autocmd BufNewFile,BufRead *.expect set filetype=json

" Display tabs and trailing spaces visually
set list
set listchars=tab:▷⋅,trail:¤,nbsp:⋅,extends:>,precedes:<

set nowrap
set textwidth=70
set formatoptions=qrn1
set colorcolumn=75
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Vim keybindings =================

let mapleader="," " Mapping leader

" Key Settings
for fpath in split(globpath('~/vim13/keyconfig/', '*.vim'), '\n')
  exe 'source' fpath
endfor

" =============== Plug/Vundle/Bundle Initialization ===============
call plug#begin('~/.vim/plugged')
for fpath in split(globpath('~/vim13/plugs/', '*.vim'), '\n')
  exe 'source' fpath
endfor
call plug#end()

" Source Settings
for fpath in split(globpath('~/vim13/settings/', '*.vim'), '\n')
  exe 'source' fpath
endfor

" source ~/.vimrc.after if it exists.
if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif

" Additional settings
set modelines=0
set nomodeline
