" grep program settings
let g:rg_command='rg --vimgrep -S'

" Use rg over grep
set grepprg=g:rg_command

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
vnoremap K :<C-U>execute "Rg " . GetVisual()<CR>

"Grep for usages of the current file
nnoremap <leader>gcf :exec "Rg " . expand("%:t:r")<CR>

"
" Keybindings
"
"grep the current word using K (mnemonic Kurrent)
nnoremap <silent> K :Rg <cword><CR>

" \ - Rg shortcut
nnoremap \ :Rg<SPACE>
