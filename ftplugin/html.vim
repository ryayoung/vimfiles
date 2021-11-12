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
nnoremap <buffer> <silent> <Leader>,, :call InsertTemplateFull()<CR>
nnoremap <buffer> <silent> <Leader>,j :call InsertJQueryScript()<CR>

" Deletes current tag. Use when hovering over '<'
nnoremap <buffer> <Leader>,d1 vf>d<Esc>
" Deletes the current AND closing tag. Use when hovering over '<'
nnoremap <buffer> <Leader>,d2 i`<Esc>lvf>d<Esc>hf<vf>d<Esc>F`x

iabbrev <buffer> <!-- <!-- --><Left><Left><Left><Left>
iabbrev <buffer> <em> <em></em><Left><Left><Left><Left><Left>


fun! InsertTemplatePlain()
  exe "normal! G"
  let l:line = line('.')
  call setline(l:line+1, "<!DOCTYPE html>")
  call setline(l:line+2, '<html lang="en-US">')
  call setline(l:line+3, "  <head>")
  call setline(l:line+4, '    <link rel="stylesheet" href="">')
  call setline(l:line+5, '    <script src="" async></script>')
  call setline(l:line+6, '    <meta charset="utf-8">')
  call setline(l:line+7, "  </head>")
  call setline(l:line+8, "  <body>")
  call setline(l:line+9, "    ")
  call setline(l:line+10, "  </body>")
  call setline(l:line+11, "</html>")
  call setpos('.', [0, l:line+9, 4, 0])
endfun

fun! InsertTemplateFull()
  exe "normal! G"
  let l:line = line('.')
  call setline(l:line+1, "<!DOCTYPE html>")
  call setline(l:line+2, '<html lang="en-US">')
  call setline(l:line+3, "  <head>")
  call setline(l:line+4, '    <meta charset="utf-8">')
  call setline(l:line+5, '    <link rel="stylesheet" href="style.css">')
  call setline(l:line+6, '    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" async></script>')
  call setline(l:line+7, '    <script src="script.js" async></script>')
  call setline(l:line+8, '    <meta name="viewport" content="width=device-width, initial-scale=1")
  call setline(l:line+9, "  </head>")
  call setline(l:line+10, "  <body>")
  call setline(l:line+11, "    ")
  call setline(l:line+12, "  </body>")
  call setline(l:line+13, "</html>")
  call setpos('.', [0, l:line+11, 4, 0])
endfun
" <meta name="viewport" content="width=device-width, initial-scale=1"

fun! InsertJQueryScript()
  let l:spaces = GetIndent()
  exe "normal! o"
  call setline('.', l:spaces . '<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>')
endfun


fun! GetIndent()
  let l:spaces = ""
  for i in range(0,getcurpos()[2]-2)
    let l:spaces = l:spaces . " "
  endfor
  return l:spaces
endfun

