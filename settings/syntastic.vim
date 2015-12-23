" Mark syntax errors with :signs
let g:syntastic_enable_signs=1
" Automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
" Show the error list automatically
let g:syntastic_auto_loc_list=1
" Don't care about warnings
let g:syntastic_quiet_messages = {'level': 'warnings'}

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" Syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1
