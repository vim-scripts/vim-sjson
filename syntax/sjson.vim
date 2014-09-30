" Vim syntax file
" Language: Bitsquid Simplified JSON (SJSON)
" Maintainer: Josh Petrie
" Latest Revision: 2014.09.25

if exists("b:current_syntax")
  finish
endif

syn keyword sjsonKeyword null true false

syn match sjsonBracket '[\[\]]'
syn match sjsonBrace '[\{\}]'
syn match sjsonEquals '='
syn match sjsonComma ','

" The first pattern matches numbers with an integer part. The second pattern
" matches numbers without an integer part. The initial alternation group
" requires numbers to start after a space, SJSON operator, or at the start of
" a line (but not within an identifier). Leading negatives and trailing
" exponents are both optional.
syn match sjsonNumber '\(^\|\s\|[=\[\]\{\}]\)-\?\d\+\(\.\(\d\+\([eE]-\?\d\+\)\?\)\?\)\?'
syn match sjsonNumber '\(^\|\s\|[=\[\]\{\}]\)-\?\.\d\+\([eE]-\?\d\+\)\?'

syn match sjsonComment '//.*$'

syn region sjsonString start='"' end='"'

hi link sjsonKeyword Keyword
hi link sjsonComment Comment
hi link sjsonBracket Operator
hi link sjsonBrace Operator
hi link sjsonEquals Operator
hi link sjsonComma Operator
hi link sjsonNumber Number
hi link sjsonString String

let b:current_syntax = "sjson"
