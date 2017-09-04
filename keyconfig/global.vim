" ================ Global map ==============

" w!! to write a file as sudo
" stolen from Steve Losh
cmap w!! w !sudo tee % >/dev/null

map W <Plug>CamelCaseMotion_w
map B <Plug>CamelCaseMotion_b
map E <Plug>CamelCaseMotion_e

sunmap W
sunmap B
sunmap E
