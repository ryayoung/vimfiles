" Maintainer:     Ryan Young
" Last Modified:  Nov 09, 2021

" Comment or uncomment lines from mark a to mark b.
fu! CommentMark(a, b)
    if !exists('b:comment')
        let b:comment = g:comment_start . ' '
    endif
    exe "normal! '" . a:a . "V'" . a:b
    " exe "normal! '" . a:a . "V'" . a:b . ':\<C-w>call ToggleComment()<CR>'
    " exe "normal! '" . a:a . "_\<C-V>'" . a:b . 'I' . b:comment
endfu

" Comment lines in marks set by g@ operator.
fu! DoCommentOp(type)
  call CommentMark('[', ']')
endfu

nnoremap <Leader>t <Esc>:set opfunc=DoCommentOp<CR>g@
vnoremap <Leader>c <Esc>:call CommentMark('<','>')<CR>

function! Surroundings()
    " First, modify the commentstring to include spaces.
        " Example: '<--%s-->' becomes '<-- %s -->'
    let l:cmt_string = substitute(&commentstring, '^$', '%s', '')
    let l:cmt_string = substitute(l:cmt_string, '\S\zs%s', ' %s', '')
    let l:cmt_string = substitute(l:cmt_string, '%s\ze\S', '%s ', '')
    " Then, split it into an array, delimited by '%s'
    " note: passing a 1 as the last param ensures that each array has two
    " spots, even if the last one is empty.
    return split(l:cmt_string, '%s', 1)
endfunction
