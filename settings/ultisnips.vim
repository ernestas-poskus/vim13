" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" You can define the keys used to trigger UltiSnips actions by setting global
" variables. Variables define the keys used to expand a snippet, jump forward
" and jump backwards within a snippet, and list all available snippets in the
" current expand context. Be advised, that some terminal emulators don't send
" <c-tab> (and others, like <c-h>) to the running program. The variables with
" their default values are: >
let g:UltiSnipsListSnippets="<tab><tab>"

" Snippet definition files are stored in snippet directories. The main
" controlling variable for where these directories are searched for is the
" list variable, set by default to >
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" Enable looking for SnipMate snippets in
" &runtimepath. UltiSnips will search only for
" directories named 'snippets' while looking for
" SnipMate snippets. Defaults to "1", so UltiSnips
" will look for SnipMate snippets.
g:UltiSnipsEnableSnipMate=1
