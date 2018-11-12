"Deoplete gets started automatically when Neovim starts if
"this value is 1.
let g:deoplete#enable_at_startup = 1

"""*g:deoplete#complete_method*
let g:deoplete#complete_method = "complete"
"If it is "complete", deoplete use |complete()|.

"If it is "completefunc", deoplete use |i_CTRL-X_CTRL-U|.
"Note: It changes current 'completefunc' value.

"If it is "omnifunc", deoplete use |i_CTRL-X_CTRL-O|.
"Note: It changes current 'omnifunc' value.

"Default value: "complete"

"""*g:deoplete#enable_ignore_case*
let g:deoplete#enable_ignore_case = "ignorecase"
"When deoplete looks for candidate completion, this
"variable controls whether deoplete ignores the upper-
"and lowercase.  If it is 1, deoplete ignores case.

"Default value: same with your 'ignorecase' value

"""*g:deoplete#enable_smart_case*
let g:deoplete#enable_smart_case = "smartcase"
"When a capital letter is included in input, deoplete does
"not ignore the upper- and lowercase.

"Default value: same with your 'smartcase' value

"""*g:deoplete#enable_camel_case*
let g:deoplete#enable_camel_case = 1
"When a capital letter is matched with the uppercase, but a
"lower letter is matched with the upper- and lowercase.
"Ex: "foB" is matched with "FooBar" not "foobar".
"Note: This feature is only available in
"|deoplete-filter-matcher_fuzzy| or
"|deoplete-filter-matcher_full_fuzzy|.

"Default value: 0

"""*g:deoplete#enable_refresh_always*
let g:deoplete#enable_refresh_always = 0
"Deoplete refreshes the candidates automatically if this value
"is 1.
"Note: It increases the screen flicker.

"Default value: 0

""*g:deoplete#auto_complete_start_length*
let g:deoplete#auto_complete_start_length = 2
"This variable controls the number of the input completion
"at the time of key input automatically.
"Note: It is the deprecated option.  You should change
"|deoplete-source-attribute-min_pattern_length|.

"Default: 2

"""*g:deoplete#disable_auto_complete*
let g:deoplete#disable_auto_complete = 0
"It controls whether you invalidate automatic completion.  If
"it is 1, automatic completion becomes invalid, but can use the
"manual completion by |deoplete#manual_complete()|.

"Default value: 0

"""*g:deoplete#delimiters*
let g:deoplete#delimiters = '/'
"Delimiters list.

"Default value: ['/']

""""*g:deoplete#max_list*
let g:deoplete#max_list = 10
"If the list of candidates exceeds the limit, not all
"candidates will show up.

"Default value: 100

"""*g:deoplete#max_abbr_width*
let g:deoplete#max_abbr_width = 0
"If the candidate abbr length exceeds the length it will be cut
"down.  If it is less than equal 0, this feature will be
"disabled.

"Default value: 80

"""*g:deoplete#max_menu_width*
let g:deoplete#max_menu_width = 40
"If the candidate menu length exceeds the length it will be cut
"down.  If it is less than equal 0, this feature will be
"disabled.

"Default value: 40

"""*g:deoplete#auto_complete_delay*
let g:deoplete#auto_complete_delay = 50
"Delay the completion after input in milliseconds.
"Requires |+timers| (Neovim 0.1.5)

"Default value: 50

"""*g:deoplete#auto_refresh_delay*
let g:deoplete#auto_refresh_delay = 500
"Delay the refresh when asynchronous.

"Default value: 500

"""*g:deoplete#skip_chars*
let g:deoplete#skip_chars = []
"The list of skip characters in the auto completion.

"Default value: []

""""*g:deoplete#sources*
let g:deoplete#sources = {}
"It is a dictionary to decide use source names.  The key is
"filetype and the value is source names list.  If the key is
""_", the value will be used for default filetypes.  For
"example, you can load some sources in C++ filetype.
"If the value is [], it will load all sources.

"Default value: {}
"" Examples:
"let g:deoplete#sources = {}
"let g:deoplete#sources._ = ['buffer']
"let g:deoplete#sources.cpp = ['buffer', 'tag']

"Buffer local variable of |g:deoplete#sources|.
"It must be the source names list.
"" Examples:
"" In cmdwin, only use buffer source.
"autocmd CmdwinEnter * let b:deoplete_sources = ['buffer']

let g:deoplete#ignore_sources = {}
"It is a dictionary to decide ignore source names.
"The key is filetype and the value is source names list.
"Default value: {}

"""*g:deoplete#omni#input_patterns*
let g:deoplete#omni#input_patterns = {}
"This dictionary records keyword patterns to Omni completion.
"This is appointed in regular expression string or list every
"file type.
"If this pattern is not defined or empty pattern, deoplete
"does not call 'omnifunc'.
"Note: Some omnifuncs which moves the cursor is not worked.
"For example, htmlcomplete, phpcomplete, etc...
"Note: It is Python3 regexp.
"let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.ruby = ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::']
let g:deoplete#omni#input_patterns.java = '[^. *\t]\.\w*'
let g:deoplete#omni#input_patterns.php = '\w+|[^. \t]->\w*|\w+::\w*'

"""*g:deoplete#omni#functions*
let g:deoplete#omni#functions = {}
"It defines a dictionary for omni completion with deoplete:
"- `keys` consist of filetypes;
"- `values` consist of either a string containing a single
"  omnifunc or a list with omnifuncs to be used for each
"  filetype.
"In case there is no omnifunc setting for the current filetype
"in the dictionary, deoplete will use the 'omnifunc' setting.
"Note: It supports context filetype feature instead of
"'omnifunc'.  You can call the omnifunc in the embedded
"language.
"Note: For omnifunctions to work with deoplete, it's necessary
"to setup the g:deoplete#omni#input_patterns setting.

"""*g:deoplete#file#enable_buffer_path*
let g:deoplete#file#enable_buffer_path = 0
"If it is 1, file source complete the files from the buffer
"path instead of the current directory.

"Default value: 0

"""*g:deoplete#tag#cache_limit_size*
let g:deoplete#tag#cache_limit_size = 500000
"It sets file size to make a cache of a file in
"tag source.  If a tag file is bigger than this size,
"deoplete does not make the tag file cache.

"Default value: 500000

""*g:deoplete#buffer#require_same_filetype*
let g:deoplete#buffer#require_same_filetype = 1
"If it is zero, deoplete collects keywords from buffers of any
"filetype

"Default value: 1
