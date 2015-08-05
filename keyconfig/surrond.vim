" <leader># Surround a word with #{ruby interpolation}
nnoremap <leader># ciw#<C-R>"#
vnoremap <leader># c#{<C-R>"}<ESC>

" <leader>" Surround a word with "quotes"
nnoremap <leader>" ciw"<C-R>""
vnoremap <leader>" c"<C-R>""<ESC>

" <leader>' Surround a word with 'single quotes'
nnoremap <leader>' ciw'<C-R>"'
vnoremap <leader>' c'<C-R>"'<ESC>

" <leader>) or <leader>( Surround a word with (parens)
" The difference is in whether a space is put in
nnoremap <leader>( ciw(<C-R>")
nnoremap <leader>) ciw(<C-R>")
vnoremap <leader>( c( <C-R>" )<ESC>
vnoremap <leader>) c(<C-R>")<ESC>

" <leader>[ Surround a word with [brackets]
nnoremap <leader>] ciw[<C-R>"]       " [text]
nnoremap <leader>[ ciw[ <C-R>" ]     " [ text ]
vnoremap <leader>[ c[<C-R>"]<ESC>
vnoremap <leader>] c[ <C-R>" ]<ESC>

" <leader>{ Surround a word with {braces}
nnoremap <leader>} ciw{<C-R>"}
nnoremap <leader>{ ciw{<C-R>"}
vnoremap <leader>} c{ <C-R>" }<ESC>
vnoremap <leader>{ c{<C-R>"}<ESC>

nnoremap <leader>` ciw`<C-R>"`
vnoremap <leader>` c`<C-R>"`<ESC>
