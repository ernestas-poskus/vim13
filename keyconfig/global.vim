" ================ Global map ==============

" Disabling arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" w!! to write a file as sudo
" stolen from Steve Losh
cmap w!! w !sudo tee % >/dev/null
