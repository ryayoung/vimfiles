" Author: Ryan Young
" Last modified: 10-30-21

"SMART GLOBAL MARKS! WAHOOOO!

"This is an original idea, in which I create a map that actually re-maps itself each time it's called.

"Marks, while extremely useful, are a bit cumbersome to use. Do you ever forget which marks map to which places, accidentally try to use a local mark globally, create too many marks and lose track of them, or find that the syntax is too cumbersome for quickly switching between two marks?

"How do you use it? First, "mm" sets global mark 1, and "mM" sets global mark 2. This simplifies the process of creating global marks and makes it intuitive to remember which one is which. Now for the fun part. Once you've set the two marks, <Leader>m will toggle between them. If you have your spacebar set as your leader key, this is an extremely fast command to press. Better yet, this eliminates the need for you to remember which mark is which. You can simply move to the "other" one.

"Mappings to set marks
"nnoremap mm mM:echo "GLOBAL MARK 1 SET"<CR>
"nnoremap mM mK:echo "GLOBAL MARK 2 SET"<CR>
"nnoremap mn mn:echo "LOCAL MARK 1 SET"<CR>
"nnoremap mN mb:echo "LOCAL MARK 2 SET"<CR>

"Mappings to toggle between marks:
"nnoremap <Leader>m 'M:call ToggleSmartMarkGlobal()<CR>
"nnoremap <Leader>n 'n:call ToggleSmartMarkLocal()<CR>

let g:smart_mark_global = 1

fun! ToggleSmartMarkGlobal()
  if g:smart_mark_global > 0
    nnoremap <Leader>m 'K:call ToggleSmartMarkGlobal()<CR>
    echo "GLOBAL MARK 1"

  else
    nnoremap <Leader>m 'M:call ToggleSmartMarkGlobal()<CR>
    echo "GLOBAL MARK 2"
  endif

  let g:smart_mark_global = -g:smart_mark_global

endfun


let g:smart_mark_local = 1

fun! ToggleSmartMarkLocal()
  if g:smart_mark_local > 0
    nnoremap <Leader>n 'b:call ToggleSmartMarkLocal()<CR>
    echo "LOCAL MARK 1"

  else
    nnoremap <Leader>n 'n:call ToggleSmartMarkLocal()<CR>
    echo "LOCAL MARK 2"
  endif

  let g:smart_mark_local = -g:smart_mark_local

endfun
