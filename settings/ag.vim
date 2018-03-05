" Ag settings
let g:ag_prg='ag --nogroup --nocolor --column --ignore tags --ignore-dir log --ignore-dir tmp --ignore-dir solr'

" Use ag over grep
set grepprg=g:ag_prg

"
" Functions
"
function! GetVisual()
  let reg_save = getreg('"')
  let regtype_save = getregtype('"')
  let cb_save = &clipboard
  set clipboard&
  normal! ""gvy
  let selection = getreg('"')
  call setreg('"', reg_save, regtype_save)
  let &clipboard = cb_save
  return selection
endfunction

"grep visual selection
vnoremap K :<C-U>execute "Ag " . GetVisual()<CR>

"Grep for usages of the current file
nnoremap <leader>gcf :exec "Ag " . expand("%:t:r")<CR>

"
" Keybindings
"
"grep the current word using K (mnemonic Kurrent)
nnoremap <silent> K :Ag <cword><CR>

" \ - Ag shortcut
nnoremap \ :Ag<SPACE>

" Open the Ag command and place the cursor into the quotes
nmap <leader>ag :Ag ""<Left>

" Ag in File
nmap <leader>af :AgFile ""<Left>

" Ag 'word' in current path
nnoremap <leader>* :Ag '<cword>'<CR>
