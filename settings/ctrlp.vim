if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s --ignore-case --files-with-matches --nocolor --nogroup -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
  " let g:ctrlp_clear_cache_on_exit = 0

  " 'c' - the directory of the current file.
  " 'a' - the directory of the current file, unless it is a subdirectory of the cwd
  " 'r' - the nearest ancestor of the current file that contains one of these directories or files: .git .hg .svn .bzr _darcs
  " 'w' - modifier to "r": start search from the cwd instead of the current file's directory
  " 0 or '' (empty string) - disable this feature.
  let g:ctrlp_working_path_mode = 'ra'
else
  " Fall back to using git ls-files if Ag is not available
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
endif

" Set this to 1 to enable the lazy-update feature: only update the match window
" after typing's been stopped for a certain amount of time: >
let g:ctrlp_lazy_update = 70 " update after ms

" Ctrlp custom ignore
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|tmp|log|coverage|public)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" MRU ignores
let g:ctrlp_mruf_exclude = g:ctrlp_custom_ignore['dir']

" Set this to 1 to show only MRU files in the current working directory: >
let g:ctrlp_mruf_relative = 1

let g:ctrlp_max_height = 15

" Search from current directory instead of project root
let g:ctrlp_working_path_mode = 0

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

" Search for modified
nnoremap <Leader>m :CtrlPModified<CR>
