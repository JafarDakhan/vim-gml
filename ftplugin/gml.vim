" Vim plugin file
" Language:	GML
" Maintainer: Jafar Dakhan <https://github.com/JafarDakhan>
" Last Update:	2022 July 15 

if exists('b:did_ftplugin')
  finish
endif

setlocal syntax=gml
setlocal foldmethod=marker
setlocal completefunc=syntaxcomplete#Complete
setlocal fileformat=dos

let b:did_ftplugin = 1

