" ================ Visual Mode map ==============

" If you visually select something and hit paste
" that thing gets yanked into your buffer. This
" generally is annoying when you're copying one item
" and repeatedly pasting it. This changes the paste
" command in visual mode so that it doesn't overwrite
" whatever is in your paste buffer.
"
vnoremap p "_dP

"grep visual selection
vnoremap K :<C-U>execute "RG " . GetVisual()<CR>

"Grep for usages of the current file
nnoremap <leader>gcf :xec "RG " . expand("%:t:r")<CR>
