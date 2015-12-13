" We don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
if executable('FZF')
  nnoremap <Leader>o :CtrlP<CR>
else
  nnoremap <Leader>o :FZF<CR>
endif

" Search for modified
nnoremap <Leader>m :CtrlPModified<CR>

" Search for lines
nnoremap <Leader>l :Lines<CR>
