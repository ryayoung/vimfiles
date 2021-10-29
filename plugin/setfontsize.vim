let s:decimalpat = '[1-9][0-9]*'
let s:fontpat_win32 = '\(:h\)\(' . s:decimalpat . '\)\(:\|,\|$\)'
fun! GetFontSize()
    let sizealmost = matchstr(&guifont, s:fontpat_win32)
    let size = matchstr(sizealmost, s:decimalpat)
    if size == ""
        echoerr "Cannot match your 'guifont' to a known pattern"
    endif
    return size
endfun

fun! SetFontSize(size)
    let guifont = substitute(&guifont, s:fontpat_win32, 
                           \ '\1' . a:size . '\3', "")
    let &guifont = guifont
endfun

fun! SetLargerFont()
  let size = GetFontSize()
  call SetFontSize(size + 1)
endfun

fun! SetSmallerFont()
  let size = GetFontSize()
  call SetFontSize(size - 1)
endfun

"nnoremap <Leader>f :call SetSmallerFont()<CR>:echo GetFontSize()<CR>
"nnoremap <Leader>F :call SetLargerFont()<CR>:echo GetFontSize()<CR>
