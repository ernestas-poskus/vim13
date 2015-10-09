"Deoplete gets started automatically when Neovim starts if
"this value is 1.
let g:deoplete#enable_at_startup = 1

"With the default value 0, you cannot use deoplete
"unless you start it manually.

"When deoplete looks for candidate completion, this
"variable controls whether deoplete ignores the upper-
"and lowercase.  If it is 1, deoplete ignores case.
"Default value is 'ignorecase'.
let g:deoplete#enable_ignore_case = 'ignorecase'

"When a capital letter is included in input, deoplete does
"not ignore the upper- and lowercase.
"Default value is 'infercase'.
let g:deoplete#enable_smart_case = 'infercase'

"This variable controls the number of the input completion
"at the time of key input automatically.
"Default value is 2.
let g:deoplete#auto_completion_start_length = 2

"It controls whether you invalidate automatic completion.  If
"it is 1, automatic completion becomes invalid, but can use the
"manual completion by |deoplete#mappings#manual_complete()|.
"Default value is 0.
let g:deoplete#disable_auto_complete = 0

"Buffer local variable of |g:deoplete#disable_auto_complete|.
" b:deoplete_disable_auto_complete

"This dictionary records keyword patterns to buffer completion.
"This is appointed in regular expression string or list every
"file type.
"Note: It is Python3 regexp.
"let g:deoplete#keyword_patterns = {}
"let g:deoplete#keyword_patterns.tex = '\\?[a-zA-Z_]\w*'
"Default value is in g:deoplete#_keyword_patterns.
" let g:deoplete#keyword_patterns

"Buffer local variable of |g:deoplete#keyword_patterns|.
" b:deoplete_keyword_patterns

"This dictionary records keyword patterns to Omni completion.
"This is appointed in regular expression string or list every
"file type.
"If this pattern is not defined or empty pattern, deoplete
"does not call 'omnifunc'.
"Note: If it is a set, deoplete will call 'omnifunc'
"directly.  So almost deoplete features are disabled.
"Note: It is Python3 regexp.
"let g:deoplete#omni_patterns = {}
"let g:deoplete#omni_patterns.ruby =
"\ ['[^. *\t]\.\w*', '\h\w*::']
"let g:deoplete#omni_patterns.java = '[^. *\t]\.\w*'
"Default value is in g:deoplete#_omni_patterns.
" g:deoplete#omni_patterns

"Buffer local variable of |g:deoplete#omni_patterns|.
" b:deoplete_omni_patterns

"It is a dictionary to decide use source names.  The key is
"filetype and the value is source names list.  If the key is
""_", the value will be used for default filetypes.  For
"example, you can load some sources in C++ filetype.
"If the value is [], it will load all sources.
"Default value is {}.
"" Examples:
"let g:deoplete#sources = {}
"let g:deoplete#sources._ = ['buffer']
"let g:deoplete#sources.cpp = ['buffer', 'tag']
" b:deoplete_sources"*b:deoplete_sources*
"Buffer local variable of |g:deoplete#sources|.
"" Examples:
"" In cmdwin, only use buffer source.
"autocmd CmdwinEnter * let b:deoplete_sources = ['buffer']
" g:deoplete#ignore_sources"*g:deoplete#ignore_sources*
"It is a dictionary to decide ignore source names.
"Default value is {}.

"Buffer local variable of |g:deoplete#ignore_sources|.
" b:deoplete_ignore_sources"*b:deoplete_ignore_sources*

"This dictionary records prefix patterns to member completion.
"This is appointed in regular expression string or list every
"file type.
"If this pattern is not defined or empty pattern, deoplete
"does not complete member candidates.
"Note: It is Python3 regexp.

"Default value is in g:deoplete#member#_prefix_patterns.

""*b:deoplete_member_prefix_patterns*
" b:deoplete_member_prefix_patterns
"Buffer local variable of |g:deoplete#member#prefix_patterns|.

"This dictionary records keyword patterns to Omni completion.
"This is appointed in regular expression string or list every
"file type.
"If this pattern is not defined or empty pattern, deoplete
"does not call 'omnifunc'.
"Note: Some omnifuncs which moves the cursor is not worked.
"For example, htmlcomplete, vim-go, etc...
"Note: It is Python3 regexp.
"let g:deoplete#omni#input_patterns = {}
"let g:deoplete#omni#input_patterns.ruby =
"\ ['[^. *\t]\.\w*', '\h\w*::']
"let g:deoplete#omni#input_patterns.java = '[^. *\t]\.\w*'
"Default value is in g:deoplete#omni#_input_patterns.

""*b:deoplete_omni_input_patterns*
" b:deoplete_omni_input_patterns
"Buffer local variable of |g:deoplete#omni#input_patterns|.
