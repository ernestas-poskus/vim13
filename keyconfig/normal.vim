" ================ Normal Mode map ==============

nnoremap <silent> <leader>/ :nohlsearch<CR> " Clear search highlights
nnoremap <c-d> dd " Delete line
nnoremap <leader>w :StripTrailingWhitespaces<CR>
nnoremap <leader><space> viwh " Select word

" Create window splits easier. The default
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

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
