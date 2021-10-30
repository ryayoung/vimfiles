" Author: Ryan Young
" Last modified: 10-30-21

set tabstop=2
set softtabstop=2
set tabstop=2
set softtabstop=2
set shiftwidth=2
let g:html_indent_script1 = "1"
"Last Updated: 10/29/21 
nnoremap <Leader>,, 
    \i<!-- Author:  Ryan Young --><CR><!-- Last Updated:  <Esc>"=strftime("%m/%d/%y")<CR>Pa --><CR><!DOCTYPE html><CR>
    \<html></html><Esc>%i<CR><Esc>O<head></head><Esc>%i<CR><Esc>O
    \<style></style><Esc>o
    \<script src=""></script><Esc>o
    \<meta charset="utf-8"><CR><title></title><Esc>jo
    \<body></body><Esc>%i<CR><Esc>O
    \<script></script><Esc>O

nnoremap <Leader>,d1 vf>d<Esc>
nnoremap <Leader>,d2 i`<Esc>lvf>d<Esc>hf<vf>d<Esc>F`x

