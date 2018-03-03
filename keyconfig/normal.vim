" ================ Normal Mode map ==============

nnoremap <silent> <leader>/ :nohlsearch<CR> " Clear search highlights

" Resize windows with arrow keys
nnoremap <D-Up> <C-w>+
nnoremap <D-Down> <C-w>-
nnoremap <D-Left> <C-w><
nnoremap <D-Right>  <C-w>>

" Source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Go to last edit location with ,.
nnoremap <leader>. '.

nnoremap <silent> Q :call CloseWindowOrKillBuffer()<CR>

" Easy motion
nmap <leader><ESC> ,,w
nmap <leader><S-ESC> ,,b

" Git-Gutter config: highlights git changes, jump between hunks
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk]

" Automatically jump to a file at the correct line number
" i.e. if your cursor is over /some/path.rb:50 then using 'gf' on it will take
" you to that line

" use ,gf to go to file in a vertical split
nnoremap <silent> ,gf   :vertical botright wincmd F<CR>
nnoremap <silent> <C-F> :vertical botright wincmd F<CR>

" copy current filename into system clipboard - mnemonic: (c)urrent(f)ilename
" this is helpful to paste someone the path you're looking at
nnoremap <silent> <leader>cf :let @* = expand("%:~")<CR>
nnoremap <silent> <leader>cn :let @* = expand("%:t")<CR>

"(v)im (c)ommand - execute current line as a vim command
nmap <silent> <leader>vc yy:<C-f>p<C-c><CR>

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

" alias yw to yank the entire word 'yank inner word'
" even if the cursor is halfway inside the word
" FIXME: will not properly repeat when you use a dot (tie into repeat.vim)
nnoremap <leader>yw yiww

" <leader>ow = 'overwrite word', replace a word with what's in the yank buffer
" FIXME: will not properly repeat when you use a dot (tie into repeat.vim)
nnoremap <leader>ow "_diwhp

"make Y consistent with C and D
nnoremap Y y$

" Make 0 go to the first character rather than the beginning
" of the line. When we're programming, we're almost always
" interested in working with text rather than empty space. If
" you want the traditional beginning of line, use ^
nnoremap 0 ^
nnoremap ^ 0

" <leader>q to toggle quickfix window (where you have stuff like Ag)
" <leader>oq to open it back up (rare)
nmap <silent> <leader>qc :cclose<CR>
nmap <silent> <leader>qo :copen<CR>

"Move back and forth through previous and next buffers
"with <leader>z and <leader>x
nnoremap <silent> <leader>z :bp<CR>
nnoremap <silent> <leader>x :bn<CR>

" Make gf (go to file) create the file, if not existent
nnoremap gf :e<cfile><CR>
nnoremap <C-w>f :sp +e<cfile><CR>
nnoremap <C-w>gf :tabe<cfile><CR>

" Select word
nnoremap <space> viw
nnoremap <leader><space> viwh
