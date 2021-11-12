" Maintainer:     Ryan Young
" Last Modified:  Nov 06, 2021

" This is really stupid. When writing this plugin, I didn't realize Vim stored
" comment strings as options settings. So, this document is completely
" unnecessary.

" Here is the comment syntax for most languages: https://rosettacode.org/wiki/Comments#Go
" Add more to this list if you're using a language not listed here

let g:comments = {
    \ 'vb':         {'start': "'",      'end': ''},
    \ 'vim':        {'start': '"',      'end': ''},
    \ 'abap':       {'start': '"',      'end': ''},
    \ 'pascal':     {'start': '(*',     'end': '*)'},
    \ 'ocaml':      {'start': '(**',    'end': '*)'},
    \ 'xquery':     {'start': '(:',     'end': ':)'},
    \ 'xhtml':      {'start': '<!--',   'end': '-->'},
    \ 'html':       {'start': '<!--',   'end': '-->'},
    \ 'xml':        {'start': '<!--',   'end': '-->'},
    \ 'ps1xml':     {'start': '<!--',   'end': '-->'},
    \ 'css':        {'start': '/*',     'end': '*/'},
    \ 'c':          {'start': '/*',     'end': '*/'},
    \ 'typescript': {'start': '/*',     'end': '*/'},
    \ 'sas':        {'start': '/*',     'end': '*/'},
    \ 'python':     {'start': '#',      'end': ''},
    \ 'ruby':       {'start': '#',      'end': ''},
    \ 'perl':       {'start': '#',      'end': ''},
    \ 'tcl':        {'start': '#',      'end': ''},
    \ 'expect':     {'start': '#',      'end': ''},
    \ 'cs':         {'start': '//',     'end': ''},
    \ 'go':         {'start': '//',     'end': ''},
    \ 'swift':      {'start': '//',     'end': ''},
    \ 'cpp':        {'start': '//',     'end': ''},
    \ 'php':        {'start': '//',     'end': ''},
    \ 'javascript': {'start': '//',     'end': ''},
    \ 'java':       {'start': '//',     'end': ''},
    \ 'rust':       {'start': '//',     'end': ''},
    \ 'scala':      {'start': '//',     'end': ''},
    \ 'kotlin':     {'start': '//',     'end': ''},
    \ 'groovy':     {'start': '//',     'end': ''},
    \ 'dart':       {'start': '//',     'end': ''},
    \ 'scilab':     {'start': '//',     'end': ''},
    \ 'sql':        {'start': '--',     'end': ''},
    \ 'haskell':    {'start': '--',     'end': ''},
    \ 'lua':        {'start': '--',     'end': ''},
    \ 'ada':        {'start': '--',     'end': ''},
    \ 'vhdl':       {'start': '--',     'end': ''},
    \ 'sather':     {'start': '--',     'end': ''},
    \ 'matlab':     {'start': '%',      'end': ''},
    \ 'prolog':     {'start': '%',      'end': ''},
    \ 'cobol':      {'start': '      *','end': ''},
    \ 'fortran':    {'start': '!',      'end': ''},
    \ 'asm':        {'start': ';',      'end': ''},
    \ 'scheme':     {'start': ';',      'end': ''},
    \ 'clojure':    {'start': ';;',     'end': ''},
    \ 'lisp':       {'start': ';;;',    'end': ''},
    \ 'simula':     {'start': 'COMMENT','end': ';'},
    \ 'tpp':        {'start': '--##',   'end': ''},
    \ 'help':       {'start': '',       'end': ''},
    \ 'custom':     {'start': '',       'end': ''},
    \ '':           {'start': '',       'end': ''}
    \ }