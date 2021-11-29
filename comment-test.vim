" Maintainer:     Ryan Young
" Last Modified:  Nov 28, 2021

" Comment or uncomment lines from mark a to mark b.
fun! CommentMark(a, b)
    if !exists('b:comment')
        let b:comment = g:comment_start . ' '
    endif
    exe "normal! '" . a:a . "V'" . a:b
    " exe "normal! '" . a:a . "V'" . a:b . ':\<C-w>call ToggleComment()<CR>'
    " exe "normal! '" . a:a . "_\<C-V>'" . a:b . 'I' . b:comment
endfun

" Comment lines in marks set by g@ operator.
fun! DoCommentOp(type)
  call CommentMark('[', ']')
endfun

nnoremap <Leader>t <Esc>:set opfunc=DoCommentOp<CR>g@
vnoremap <Leader>c <Esc>:call CommentMark('<','>')<CR>

f! Surroundings()
    " Modify the commentstring to include spaces.
        " Example: '<--%s-->' becomes '<-- %s -->'
    let l:cmt_string = substitute(&commentstring, '^$', '%s', '')
    let l:cmt_string = substitute(l:cmt_string, '\S\zs%s', ' %s', '')
    let l:cmt_string = substitute(l:cmt_string, '%s\ze\S', '%s ', '')
    " Then, split it into an array, delimited by '%s'
    " note: passing a 1 as the last param ensures that each array has two
    " spots, even if the last one is empty.
    return split(l:cmt_string, '%s', 1)
endfun
