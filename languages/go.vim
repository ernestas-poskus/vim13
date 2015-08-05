setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop=4 nolist

function! s:GoVet()
  cexpr system("go vet " . shellescape(expand('%')))
  copen
endfunction
command! GoVet :call s:GoVet()

" Hooks
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
autocmd BufWritePost,FileWritePost *.go execute 'GoVet' | cwindow " GoVet after save
autocmd BufWritePost,FileWritePost *.go execute 'GoLint' | cwindow " GoLint after save

" Keyconfig
 nmap <Leader>i <Plug>(go-info)
 nmap <Leader>gd <Plug>(go-doc)
 nmap <Leader>gv <Plug>(go-doc-vertical)
 nmap <Leader>gb <Plug>(go-doc-browser)
 nmap <leader>r <Plug>(go-run)
 nmap <leader>b <Plug>(go-build)
 nmap <leader>t <Plug>(go-test)
 nmap gd <Plug>(go-def)
 nmap <Leader>ds <Plug>(go-def-split)
 nmap <Leader>dv <Plug>(go-def-vertical)
 nmap <Leader>dt <Plug>(go-def-tab)
 inoremap ' "
 inoremap " '

" <leader>" Surround a word with "quotes"
nnoremap <leader>" ciw'<C-R>"'
vnoremap <leader>" c'<C-R>"'<ESC>

" <leader>' Surround a word with 'single quotes'
nnoremap <leader>' ciw"<C-R>""
vnoremap <leader>' c"<C-R>""<ESC>

" vim-go settings

" Use this option to auto |:GoFmt| on save. By default it's enabled >
let g:go_fmt_autosave = 1

" Use this option to define which tool is used to gofmt. By default `gofmt` is used >
let g:go_fmt_command = "gofmt"
let g:go_fmt_command = "goimports"

" Use this option to add additional options to the |g:go_fmt_command|. Default is empty. >
let g:go_fmt_options = ''

" Use this option to change the enable GoDoc to run on words under the cursor
" with the default K , keywordprg shortcut. This shortcut is by default set to
" use the program man. However in go using godoc is more idiomatic. Default is
" enabled. >
let g:go_doc_keywordprg_enabled = 0

" Use this option to change default path for vim-go tools when using
" |GoInstallBinaries| and |GoUpdateBinaries|. If not set `$GOBIN` or
" `$GOPATH/bin` is used. >
let g:go_bin_path = expand($GOPATH)

" Use this option to define the default snippet engine.  By default
" "ultisnips" is used. Use "neosnippet" for neosnippet.vim: >
let g:go_snippet_engine = "ultisnips"


" Syntax Settings


" Highlights white space after "[]". >
let g:go_highlight_array_whitespace_error = 1

" Highlights white space around the communications operator that don't follow
" the standard style. >
let g:go_highlight_chan_whitespace_error = 1

" Highlights commonly used library types (io.Reader, etc.). >
let g:go_highlight_extra_types = 1

" Highlights instances of tabs following spaces. >
let g:go_highlight_space_tab_error = 1

" Highlights trailing white space. >
let g:go_highlight_trailing_whitespace_error = 1

" Highlights operators such as `:=` , `==`, `-=`, etc ...By default it's disabled. >
let g:go_highlight_operators = 1

" Highlights function names. By default it's disabled. >
let g:go_highlight_functions = 1

" Highlights method names. By default it's disabled. >
let g:go_highlight_methods = 1

" Highlights struct names. By default it's disabled. >
let g:go_highlight_structs = 1

" Highlights build constraints. By default it's disabled
let g:go_highlight_build_constraints = 1
