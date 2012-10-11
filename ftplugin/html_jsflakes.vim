" Helper function for (x)html snippets
if exists('s:did_html_jsflakes') || &cp
	finish
endif
let s:did_html_jsflakes = 1

" Automatically activate jsflakes if in xhtml
" Make sure the filetype is html or xhtml
" haml.vim will force to execute html_*.vim for haml file
" which will cause jsflakes treat haml files as javascript files
if &ft == 'html' || &ft == 'xhtml'
	runtime! ftplugin/javascript/*.vim
endif
