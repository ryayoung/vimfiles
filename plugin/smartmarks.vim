
"SMART GLOBAL MARKS! WAHOOOO!

"nnoremap mm mM:echo "GLOBAL MARK 1 SET"<CR>
"nnoremap mM mK:echo "GLOBAL MARK 2 SET"<CR>
nnoremap <Leader>m 'M:call ToggleSmartMarkGlobal()<CR>

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

"SMART LOCAL MARKS! YAYYY!

"nnoremap mn mn:echo "LOCAL MARK 1 SET"<CR>
"nnoremap mN mb:echo "LOCAL MARK 2 SET"<CR>
nnoremap <Leader>n 'n:call ToggleSmartMarkLocal()<CR>

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
