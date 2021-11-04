" Author: Ryan Young
"Last modified: 11-04-21

" Here is the comment syntax for most languages: https://rosettacode.org/wiki/Comments#Go
let comments = {
    \ 'vb':         {'start': "'", 'end': ''},
    \ 'vim':        {'start': '"', 'end': ''},
    \ 'pascal':     {'start': '(*', 'end': '*)'},
    \ 'xhtml':      {'start': '<!--', 'end': '-->'},
    \ 'html':       {'start': '<!--', 'end': '-->'},
    \ 'xml':        {'start': '<!--', 'end': '-->'},
    \ 'css':        {'start': '/*', 'end': '*/'},
    \ 'c':          {'start': '/*', 'end': '*/'},
    \ 'typescript': {'start': '/*', 'end': '*/'},
    \ 'python':     {'start': '#', 'end': ''},
    \ 'ruby':       {'start': '#', 'end': ''},
    \ 'perl':       {'start': '#', 'end': ''},
    \ 'ps1':        {'start': '#', 'end': ''},
    \ 'cs':         {'start': '//', 'end': ''},
    \ 'go':         {'start': '//', 'end': ''},
    \ 'swift':      {'start': '//', 'end': ''},
    \ 'cpp':        {'start': '//', 'end': ''},
    \ 'php':        {'start': '//', 'end': ''},
    \ 'javascript': {'start': '//', 'end': ''},
    \ 'java':       {'start': '//', 'end': ''},
    \ 'rust':       {'start': '//', 'end': ''},
    \ 'scala':      {'start': '//', 'end': ''},
    \ 'kotlin':     {'start': '//', 'end': ''},
    \ 'sql':        {'start': '--', 'end': ''},
    \ 'haskell':    {'start': '--', 'end': ''},
    \ 'lua':        {'start': '--', 'end': ''},
    \ 'ada':        {'start': '--', 'end': ''},
    \ 'matlab':     {'start': '%', 'end': ''},
    \ '':           {'start': '', 'end': ''}
    \ }

let comment_start = g:comments[&filetype].start
let comment_end = g:comments[&filetype].end
"let comment_start_esc = ''
"let comment_end_esc = ''

au BufNewFile,BufRead,FocusGained,BufEnter,WinEnter,FileType,FileWritePre,BufWritePre,BufWritePost * call SetCommentVars(&filetype)
fun! SetCommentVars(filetype)
    if has_key(g:comments, a:filetype) == 1
        let g:comment_start = g:comments[a:filetype].start
        let g:comment_end = g:comments[a:filetype].end
        call SetCommentVarsEscaped()
    else
        let g:comment_start = ''
        let g:comment_end = ''
        let g:comment_start_esc = ''
        let g:comment_end_esc = ''
    endif
endfun


fun! SetCommentVarsEscaped()
    " Create an escaped version of start comment and end comment
    let l:com_start_split = split(g:comment_start, '\zs')
    let l:com_end_split = split(g:comment_end, '\zs')

    for i in range(0, len(l:com_start_split)-1)
        if l:com_start_split[i] == "/"
            let l:com_start_split[i] = '\' . l:com_start_split[i]
        endif
    endfor
    for i in range(0, len(l:com_end_split)-1)
        if l:com_end_split[i] == "/"
            let l:com_end_split[i] = '\' . l:com_end_split[i]
        endif
    endfor

    let g:comment_start_esc = join(l:com_start_split, "")
    let g:comment_end_esc = join(l:com_end_split, "")
endfun
call SetCommentVarsEscaped()

" Bufwritepre, winenter, bufenter, bufread, bufnewfile
autocmd BufEnter,BufReadPost * call CreateFirstHeader()
fun! CreateFirstHeader()
    if line("$") == 1 && match(getline('.'), "^\\s*$") == 0 && &filetype != "" && &filetype != "csv"
        call CreateHeader()
        exe "normal! jo"
    endif
endfun

fun! CreateHeader()
    let l:save_cursor = getcurpos()
    let title1 = "Author: " . g:name
    let title2 = "Last modified: "
    let time = strftime("%m-%d-%y")
    let end = ""
    if g:comment_end != ""
        let end = " " . g:comment_end
    endif
    execute "normal! ggO" | execute "normal! cc" . g:comment_start . " " . title1 . end
    execute "normal! o" | execute "normal! cc" . g:comment_start . " " . title2 . time . end
    call setpos('.', l:save_cursor)
endfun

autocmd BufWritePre,FileWritePre * call UpdateLastModified()
fun! UpdateLastModified()
    if &modified == 0 "Only update if changes have been made
        return
    endif
    let save_cursor = getcurpos()
    let title = "Last modified: "
    let time = strftime("%m-%d-%y")
    let end = ""
    if g:comment_end_esc != ""
        let end = " " . g:comment_end_esc
    endif
    let line = search(g:comment_start . " " . title . "..-..-..", "w")
    if line != 0 
        exe line . "g/" . title . "/s/.*/" . g:comment_start_esc . " " . title . time . end
    endif

    call setpos('.', save_cursor)
endfun

fun! CommentLine()
    let l:save_cursor = getcurpos()
    let end = ""
    if g:comment_end != ""
        let end = " " . g:comment_end
    endif

    execute "normal! I" . g:comment_start . " "
    execute "normal! A" . end

    call setpos('.', l:save_cursor)
    
endfun


" vim   vim         "
" vb    vb          '
" inc   pascal      (* *)
" xhtml xhtml       
" html  html        <!-- -->
" xml   xml         <!-- -->
" css   css         /* */
" c     c           /* */
" ts    typescript  /* */
" py    python      #
" rb    ruby        #
" pl    perl        #
" ps1   ps1         #
" cs    cs          //
" go    go          //
" swift swift       //
" cpp   cpp         //
" php   php         //
" js    javascript  //
" java  java        //
" rs    rust        //
" scala scala       //
" kt    kotlin      //
" sql   sql         --
" hs    haskell     --
" lua   lua         --
" ada   ada         --
" m     matlab      %
" txt   text        none
" md    markdown    none

