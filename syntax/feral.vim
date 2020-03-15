" Vim syntax file
" Language: Feral
" Maintainer: Electrux Redsworth
" Latest Revision: 15 March 2020

if exists("b:current_syntax")
	finish
endif

" Keywords
syn keyword keywords let struct trait fn return if elif else for in while continue break nextgroup=otherKeywords
syn keyword keywords true false nextgroup=selfKeyword
syn keyword keywords self

" Todo
syn keyword todos contained TODO FIXME NOTE

" Comments
syn match comments '#.*$' contains=todos

" Numbers
syn match numbers '\d\+'
syn match numbers '[-+]\d\+'
" Floating point number with decimal no E or e 
syn match numbers '\d\+\.\d*'
syn match numbers '[-+]\d\+\.\d*'

" Block
syn region blocks start='{' end='}' fold transparent

" Strings
syn region strings start="'" end="'"
syn region strings start='"' end='"'

hi def link todos	Todo
hi def link comments	Comment
hi def link blocks	Statement
hi def link keywords	Type
hi def link strings	Constant
hi def link numbers	Constant

let b:current_syntax = "feral"