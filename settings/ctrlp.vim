if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s --ignore-case --files-with-matches --nocolor --nogroup -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 1
  " let g:ctrlp_clear_cache_on_exit = 0
  " let g:ctrlp_working_path_mode = 'ra'
else
  " Fall back to using git ls-files if Ag is not available
  let g:ctrlp_custom_ignore = { 'dir': '\v(tmp|coverage|log|public|bin)$' }
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
endif
let g:ctrlp_max_height = 15

" Default to filename searches - so that appctrl will find application
" controller
let g:ctrlp_by_filename = 1

" Don't jump to already open window. This is annoying if you are maintaining
" several Tab workspaces and want to open two windows into the same file.
let g:ctrlp_switch_buffer = 0

" Reuse NERD tree
let g:ctrlp_reuse_window = 'NERD'
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<cr>', '<c-y>', '<2-LeftMouse>'],
    \ 'CreateNewFile()':      []
    \ }

" We don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
"let g:ctrlp_map = ',t'
"nnoremap <silent> ,t :CtrlP<CR>
nnoremap <Leader>o :CtrlP<CR>

" Additional mapping for ctags search
nnoremap <Leader>b :CtrlPTag<CR>

" Search for modified
nnoremap <Leader>m :CtrlPModified<CR>

" Cmd-Shift-P to clear the cache
nnoremap <silent> <D-P> :ClearCtrlPCache<cr>

"Cmd-Shift-(M)ethod - jump to a method (tag in current file)
"Ctrl-m is not good - it overrides behavior of Enter
nnoremap <silent> <D-M> :CtrlPBufTag<CR>

let g:ctrlp_abbrev = {
    \ 'gmode': 't',
    \ 'abbrevs': [
        \ {
        \ 'pattern': '\(^@.\+\|\\\@<!:.\+\)\@<! ',
        \ 'expanded': '_',
        \ 'mode': 'pfrz',
        \ },
        \ ]
    \ }
