let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'active': {
  \     'left': [
  \         ['mode', 'paste'],
  \         ['readonly', 'fugitive'],
  \         ['ctrlpmark', 'bufferline']
  \     ],
  \     'right': [
  \         ['lineinfo'],
  \         ['percent'],
  \         ['fileformat', 'fileencoding', 'filetype', 'syntastic']
  \     ]
  \ },
  \ 'component': {
  \     'paste': '%{&paste?"!":""}'
  \ },
  \ 'component_function': {
  \     'mode'         : 'MyMode',
  \     'fugitive'     : 'MyFugitive',
  \     'readonly'     : 'MyReadonly',
  \     'ctrlpmark'    : 'CtrlPMark',
  \     'fileformat'   : 'MyFileformat',
  \     'fileencoding' : 'MyFileencoding',
  \     'filetype'     : 'MyFiletype'
  \ },
  \ 'component_expand': {
  \     'syntastic': 'SyntasticStatuslineFlag',
  \ },
  \ 'component_type': {
  \     'syntastic': 'middle',
  \ },
  \ 'subseparator': {
  \     'left': '|', 'right': '|'
  \ }
  \ }

let g:lightline.mode_map = {
  \ 'n'      : ' N ',
  \ 'i'      : ' I ',
  \ 'R'      : ' R ',
  \ 'v'      : ' V ',
  \ 'V'      : 'V-L',
  \ 'c'      : ' C ',
  \ "\<C-v>" : 'V-B',
  \ 's'      : ' S ',
  \ 'S'      : 'S-L',
  \ "\<C-s>" : 'S-B',
  \ '?'      : '      ' }

function! MyMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
          \ fname == 'ControlP' ? 'CtrlP' :
          \ winwidth('.') > 60 ? lightline#mode() : ''
endfunction

function! MyFugitive()
  try
    if expand('%:t') !~? 'Tagbar' && exists('*fugitive#head')
        let mark = '± '
        let _ = fugitive#head()
        return strlen(_) ? mark._ : ''
    endif
  catch
  endtry
  return ''
endfunction

function! MyReadonly()
  return &ft !~? 'help' && &readonly ? '≠' : '' " or ⭤
endfunction

function! CtrlPMark()
  if expand('%:t') =~ 'ControlP'
      call lightline#link('iR'[g:lightline.ctrlp_regex])
      return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
          \ , g:lightline.ctrlp_next], 0)
  else
      return ''
  endif
endfunction

function! MyBufferline()
  call bufferline#refresh_status()
  let b = g:bufferline_status_info.before
  let c = g:bufferline_status_info.current
  let a = g:bufferline_status_info.after
  let alen = strlen(a)
  let blen = strlen(b)
  let clen = strlen(c)
  let w = winwidth(0) * 4 / 11
  if w < alen+blen+clen
    let whalf = (w - strlen(c)) / 2
    let aa = alen > whalf && blen > whalf ? a[:whalf] : alen + blen < w - clen || alen < whalf ? a : a[:(w - clen - blen)]
    let bb = alen > whalf && blen > whalf ? b[-(whalf):] : alen + blen < w - clen || blen < whalf ? b : b[-(w - clen - alen):]
    return (strlen(bb) < strlen(b) ? '...' : '') . bb . c . aa . (strlen(aa) < strlen(a) ? '...' : '')
  else
    return b . c . a
  endif
endfunction

function! MyFileformat()
  return winwidth('.') > 90 ? &fileformat : ''
endfunction

function! MyFileencoding()
  return winwidth('.') > 80 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyFiletype()
  return winwidth('.') > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

let g:ctrlp_status_func = {
  \ 'main': 'CtrlPStatusFunc_1',
  \ 'prog': 'CtrlPStatusFunc_2',
  \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_regex = a:regex
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
  return lightline#statusline(0)
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'

function! TagbarStatusFunc(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
  return lightline#statusline(0)
endfunction

augroup AutoSyntastic
  autocmd!
  autocmd BufWritePost *.c,*.cpp,*.perl,*py call s:syntastic()
augroup END
function! s:syntastic()
  SyntasticCheck
  call lightline#update()
endfunction
