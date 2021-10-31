" Author: Ryan Young
" Last modified: 10-30-21

let Comment = '" '
let EndComment = ''
"Possible bug: test comments that include a forward slash
augroup comment
    au!
    au WinEnter,BufNewFile,FocusGained,WinEnter * if &filetype == '' | let Comment='' | let EndComment='' | endif
    au WinEnter,BufNewFile,FocusGained,WinEnter * if &filetype == 'vim' | let Comment='" ' | let EndComment="" | endif
    au BufRead,BufNewFile,FocusGained,WinEnter *.inc,*.ihtml,*.html,*.tpl,*.class,*.xml let Comment="<!-- " | let EndComment=" -->"
    au BufRead,BufNewFile,FocusGained,WinEnter *.css,*.c,*.h let Comment="/* " | let EndComment=" */"
    au BufRead,BufNewFile,FocusGained,WinEnter *.sh,*.pl,*.tcl,*.py,*.rb let Comment="# " | let EndComment=""
    au BufRead,BufNewFile,FocusGained,WinEnter *.cc,*.cpp,*.php,*.cxx,*.js,*.java let Comment="// " | let EndComment=""
    au BufRead,BufNewFile,FocusGained,WinEnter *.c,*.h let Comment="/* " | let EndComment=" */"
    au BufRead,BufNewFile,FocusGained,WinEnter *.vb let Comment="' " | let EndComment=""
    au BufRead,BufNewFile,FocusGained,WinEnter *.txt,*.md let Comment="" | let EndComment=""
    au BufRead,BufNewFile,FocusGained,WinEnter *.vim let Comment='" ' | let EndComment=""
augroup END

"FUNCTIONS:-------------------------------------------------------

autocmd BufWritePre,FileWritePre * call UpdateLastModified()
fun! UpdateLastModified()
    if &modified == 0 "Only update if changes have been made
        return
    endif
    let save_cursor = getcurpos()
    let title = "Last modified: "
    let time = strftime("%m-%d-%y")

    let line = search(g:Comment . title . "..-..-..", "w")
    if line != 0 
        exe line . "g/" . title . "/s/.*/" . g:Comment . title . time . g:EndComment
    endif

    call setpos('.', save_cursor)
endfun

autocmd BufRead,BufNewFile,FocusGained * call CreateFirstHeader()
fun! CreateFirstHeader()
    if line("$") == 1 && match(getline('.'), "^\\s*$") == 0 && &filetype != "" && &filetype != "csv"
        call CreateHeader()
        execute "normal! o" | execute "normal! dd"
    endif
endfun

fun! CreateHeader()
    let l:save_cursor = getcurpos()
    let title1 = "Author: " . g:name
    let title2 = "Last modified: "
    let time = strftime("%m-%d-%y")
    execute "normal! ggO" | execute "normal! cc" . g:Comment . title1 . g:EndComment
    execute "normal! o" | execute "normal! cc" . g:Comment . title2 . time . g:EndComment
    call setpos('.', l:save_cursor)
endfun

