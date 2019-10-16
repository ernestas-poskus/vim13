" By default this option is set to 'prompt'.
" This means that when you start Vim without opening any files and the default session script exists,
" the session plug-in will ask whether you want to restore your default session.
let g:session_autoload="no"

" By default this option is set to 'prompt'.
" When you've opened a session and you quit Vim,
" the session plug-in will ask whether you want to save the changes to your session.
let g:session_autosave="yes"

" By default this option is set to false (0). When you set this option to true (1) and you start Vim,
" the session plug-in will open your last used session of the default session.
let g:session_default_to_last = 0

" This option sets the interval in minutes for automatic, periodic saving of
" active sessions. The default is zero which disables the feature.
let g:session_autosave_periodic = 2

" If you set this option to true (1) the messages normally emitted by automatic,
" periodic saving of active sessions are silenced.
let g:session_autosave_silent = 1

" The names of the commands defined by the session plug-in start with the action
" they perform, followed by the string 'Session'. Some people prefer it the other
" way around because they find it easier to remember and you can type
let g:session_command_aliases = 1
