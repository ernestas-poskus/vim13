" We don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
nnoremap <Leader>o :FuzzyOpen<CR>

" Search for modified
nnoremap <Leader>m :CtrlPModified<CR>

" Search in current buffer
nnoremap <Leader>s :FuzzyGrep<CR>
