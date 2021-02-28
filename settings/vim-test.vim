nmap <silent> tt :TestLast<CR>
nmap <silent> tn :TestNearest<CR>
nmap <silent> tf :TestFile<CR>

let test#strategy = {
  \ 'nearest': 'neovim'
\}
