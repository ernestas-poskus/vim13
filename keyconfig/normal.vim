" ================ Normal Mode map ==============

nnoremap <silent> <leader>/ :nohlsearch<CR> " Clear search highlights

nnoremap <silent> Q :call CloseWindowOrKillBuffer()<CR>

" Automatically jump to a file at the correct line number
" i.e. if your cursor is over /some/path.rb:50 then using 'gf' on it will take
" you to that line

" Type <leader>hl to toggle highlighting on/off, and show current value.
noremap <leader>hl :set hlsearch! hlsearch?<CR>

" These are very similar keys. Typing 'a will jump to the line in the current
" file marked with ma. However, `a will jump to the line and column marked
" with ma.  It’s more useful in any case I can imagine, but it’s located way
" off in the corner of the keyboard. The best way to handle this is just to
" swap them: http://items.sjbach.com/319/configuring-vim-right
nnoremap ' `
nnoremap ` '

"make Y consistent with C and D
nnoremap Y y$

" Make 0 go to the first character rather than the beginning
" of the line. When we're programming, we're almost always
" interested in working with text rather than empty space. If
" you want the traditional beginning of line, use ^
nnoremap 0 ^
nnoremap ^ 0

" Select word
nnoremap <space> viw

" Map escape
inoremap jj <Esc>

" We don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
nnoremap <Leader>o :Files<CR>

" Git files (git status)
nnoremap <Leader>m :GFiles?<CR>

" Search in loaded buffers
nnoremap <Leader>l :Lines<CR>

" Search in current buffer
nnoremap <Leader>b :BLines<CR>

" Git files (git status)
nnoremap <Leader>ll :Lines<CR>

"grep the current word using K (mnemonic Kurrent)
nnoremap <silent> K :RG <cword><CR>

" \ - Rg shortcut
nnoremap \ :RG<SPACE>

" Microsoft Natural Ergonomic 4000
nnoremap <Left> <C-w>h
nnoremap <Right> <C-w>l
