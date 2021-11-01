" Author: Ryan Young
" Last modified: 10-31-21

"For info on tabstop, softtabstop, expandtab, and shiftwidth,
"watch: http://vimcasts.org/episodes/tabs-and-spaces/
set tabstop=2 "Defines how many columns a true tab is
set softtabstop=2 "Defines how far the cursor moves when you hit Tab key. If tabstop=8 and softtabstop=4 and you hit Tab, you'll move forward 4 spaces instead of 1 tab
set shiftwidth=2 "Defines how far to shift text when you press >> or <<, or when vim autoindents based on syntax and filetype

let g:html_indent_script1 = "1" "Indents code inside <script> element 

let g:my_name = "Ryan Young"

"Use this when starting a new html file. 
nnoremap <buffer> <Leader>,, 
    \i<!-- Author:  <Esc>"=g:my_name<CR>Pa --><CR><!-- Last modified:  <Esc>"=strftime("%m-%d-%y")<CR>Pa --><CR><!DOCTYPE html><CR>
    \<html></html><Esc>%i<CR><Esc>O<head></head><Esc>%i<CR><Esc>O
    \<style></style><Esc>o
    \<script src=""></script><Esc>o
    \<meta charset="utf-8"><CR><title></title><Esc>jo
    \<body></body><Esc>%i<CR><Esc>O
    \<script></script><Esc>O

" Deletes current tag. Use when hovering over '<'
nnoremap <buffer> <Leader>,d1 vf>d<Esc>
" Deletes the current AND closing tag. Use when hovering over '<'
nnoremap <buffer> <Leader>,d2 i`<Esc>lvf>d<Esc>hf<vf>d<Esc>F`x

iabbrev <buffer> <!-- <!-- --><Left><Left><Left><Left>
iabbrev <buffer> <em> <em></em><Left><Left><Left><Left><Left>

