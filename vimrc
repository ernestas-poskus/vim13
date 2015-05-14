" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ================ Config ====================

" Vim Settings
set notimeout
set ttimeout
set timeoutlen=100
set updatetime=1000

" Colors folder
colorscheme molokai
let g:rehash256 = 1
let g:molokai_original = 1

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default
set viminfo='100,f1 " Save up to 100 marks, enable capital marks
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

"tell the term has 256 colors
set t_Co=256

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab

filetype plugin on
filetype indent on

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

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

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
for fpath in split(globpath('~/vim13/plugs/', '*.plug'), '\n')
  exe 'source' fpath
endfor
call plug#end()

" Plugin Settings
for fpath in split(globpath('~/vim13/settings/', '*.vim'), '\n')
  exe 'source' fpath
endfor

" source ~/.vimrc.after if it exists.
if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif
