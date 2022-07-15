
" Vim indent file
" Language: GML
" Maintainer: Jafar Dakhan <https://github.com/JafarDakhan>
" Last Update:	2022 July 15

" load this indent file when no other was loaded
if exists('b:did_indent')
  finish
endif
let b:did_indent = 1

" use default C indent
setlocal cindent
let b:undo_indent = "setl cin<"

