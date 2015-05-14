autocmd FileType ruby,eruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" Rails
nnoremap ,vv :Rview<cr>
nnoremap ,cc :Rcontroller<cr>

" Rspec
function! ChangePendingRspecToXit()
  " Find the next occurrence of pending
  while(search("pending(") > 0)
    " Delete it
    normal dd
    " Search backwards to the it block
    ?it\s
    " add an 'x' to the 'it' to make it 'xit'
    normal ix
  endwhile
endfunction

nnoremap <silent> ,rxit :call ChangePendingRspecToXit()<cr>

" insert a before { } block around a line
nnoremap <silent> \bf ^ibefore { <esc>$a }

" RSpec.vim mappings
let g:rspec_runner = "os_x_iterm"
let g:rspec_command = "!bundle exec rspec {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>

" Idea from : http://www.charlietanksley.net/blog/blog/2011/10/18/vim-navigation-with-lustyexplorer-and-lustyjuggler/
" Open CtrlP starting from a particular path, making it much
" more likely to find the correct thing first. mnemonic 'jump to [something]'
map ,ja :CtrlP app/assets<CR>
map ,jm :CtrlP app/models<CR>
map ,jc :CtrlP app/controllers<CR>
map ,jv :CtrlP app/views<CR>
map ,jh :CtrlP app/helpers<CR>
map ,jl :CtrlP lib<CR>
map ,jp :CtrlP public<CR>
map ,js :CtrlP spec<CR>
map ,jf :CtrlP fast_spec<CR>
map ,jd :CtrlP db<CR>
map ,jC :CtrlP config<CR>
map ,jV :CtrlP vendor<CR>
map ,jF :CtrlP factories<CR>
map ,jT :CtrlP test<CR>
