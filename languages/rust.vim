inoremap ' "
inoremap " '

let g:racer_cmd = "racer --edition 2018"

" Set this option to 1 to run |:RustFmt| automatically when saving a
" buffer. If not specified it defaults to 0 : >
let g:rustfmt_autosave = 1

" Set this option to enable vim indentation and textwidth settings to
" conform to style conventions of the rust standard library (i.e. use 4
" spaces for indents and sets 'textwidth' to 99). This option is enabled
" by default. To disable it: >
let g:rust_recommended_style = 1

" Set this option to 1 to preserve the leader on multi-line doc comments
" using the /*! syntax: >
let g:rust_bang_comment_leader = 1

" Set this option to the name of the 'rustfmt' executable in your $PATH. If
" not specified it defaults to 'rustfmt' : >
let g:rustfmt_command = 'rustfmt'

" Compiles and runs the current file. If it has unsaved changes,
" it will be saved first using |:update|. If the current file is
" an unnamed buffer, it will be written to a temporary file
" first. The compiled binary is always placed in a temporary
" directory, but is run from the current directory.
nmap <leader>r :RustRun<CR>

" Compiles and runs the current file. If it has unsaved changes,
" it will be saved first using |:update|. If the current file is
" an unnamed buffer, it will be written to a temporary file
" first. The compiled binary is always placed in a temporary
" directory, but is run from the current directory.
nmap <leader>t :RustTest<CR>
