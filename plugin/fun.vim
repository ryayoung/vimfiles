" Maintainer:     Ryan Young
" Last Modified:  Sep 24, 2022


" GET PYTHON DATAFRAME:
fun! GetDF()
    let l:text = "pd.DataFrame([[1,2,3],[4,5,6],[7,8,9]], index=['a','b','c'], columns=['A','B','C'])"
    call append(line('.') - 1, l:text)
endfun

" OUTPUT DIRECTORY:
fun! OutputDir(message = "")
    if a:message != ""
        let l:message = a:message
    else
        let l:message = "DIR: "
    end
    try
        execute 'echom l:message . split(getcwd(),"\/")[-2] . "\/" . split(getcwd(),"\/")[-1]'
    catch
        execute 'echom l:message . getcwd()'
    endtry
endfun
" OUTPUT FILE NAME:
fun! OutputFile(message = "")
    if a:message != ""
        let l:message = a:message
    else
        let l:message = "FILE: "
    end
    try
        execute 'echom l:message . split(expand("%:p"), "\/")[-2] . "\/" . expand("%:t")'
    catch
        execute 'echom l:message . expand("%:t")'
    endtry
endfun


" LOGIC FOR QUITTING VIM:
fun! SaveWorkspaceAndQuitAll()
    " exe "call feedkeys(escape(':mks! ~/vimfiles/sessions/sesh1.vim\<CR>', '\'))"
    " echo "SAVED SESSION 1"
    exe "wqa"
endfun

" LOGIC FOR QUITTING FILE:
fun! QuitIfEmpty()
    if &filetype == 'netrw'
        exe 'q'
    elseif line("$") == 1 && match(getline('.'), "^\\s*$") == 0 
        exe "q!"
    elseif line("$") < 5 && empty(&filetype)
        exe "q!"
    elseif index(['css','html','javascript','python','vim','php','vb','sql','java','text','markdown'], &filetype) >= 0
        exe "wq"
    elseif &filetype == 'help' && &readonly == 0
        exe "wq"
    else
        exe "q"
    endif
endfun


" CHECK IF ANY BUFFERS ARE MODIFIED:
fun! AnyBuffersModified()
    let l:numModified = 0
    let l:numUnnamedModified = 0
    for i in range(1, bufnr('$'))
        let l:numModified = l:numModified + getbufvar(i, "&mod")
        if getbufvar(i, "&mod") == 1 
            if bufname(i) == ""
                let l:numUnnamedModified = l:numUnnamedModified + 1
            else
                echom bufname(i)
            endif
        endif
    endfor
    if l:numUnnamedModified > 0
        echom "Unnamed buffer(s) modified: (" . l:numUnnamedModified . ")"
    endif
    if l:numModified > 0
        return 1
    else
        return 0
    endif
endfun


