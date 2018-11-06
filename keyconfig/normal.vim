" ================ Normal Mode map ==============

nnoremap <silent> <leader>/ :nohlsearch<CR> " Clear search highlights

nnoremap <silent> Q :call CloseWindowOrKillBuffer()<CR>

" Automatically jump to a file at the correct line number
" i.e. if your cursor is over /some/path.rb:50 then using 'gf' on it will take
" you to that line

"(v)im (r)eload
nmap <silent> <leader>vr :so %<CR>

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

"Move back and forth through previous and next buffers
"with <leader>z and <leader>x
nnoremap <silent> <leader>z :bp<CR>
nnoremap <silent> <leader>x :bn<CR>

" Select word
nnoremap <space> viw
