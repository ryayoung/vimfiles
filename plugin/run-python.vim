" Maintainer:     Ryan Young
" Last Modified:  Nov 30, 2021

fun! ExecutePythonNewBuffer()
    " SOURCE [reusable window]: https://github.com/fatih/vim-go/blob/master/autoload/go/ui.vim

    " save and reload current file
    silent exe "update | edit"
    
    " add the console output
    silent exe "cd %:p:h"

    " get file path of current file
    let s:current_buffer_file_path = expand("%")

    let s:output_buffer_name = "Python"
    let s:output_buffer_filetype = "output"

    " reuse existing buffer window if it exists otherwise create a new one
    if !exists("s:buf_nr") || !bufexists(s:buf_nr)
        silent exe 'botright new ' . s:output_buffer_name
        let s:buf_nr = bufnr('%')
    elseif bufwinnr(s:buf_nr) == -1
        silent exe 'botright new'
        silent exe s:buf_nr . 'buffer'
    elseif bufwinnr(s:buf_nr) != bufwinnr('%')
        silent exe bufwinnr(s:buf_nr) . 'wincmd w'
    endif

    silent exe "setlocal filetype=" . s:output_buffer_filetype
    setlocal bufhidden=delete
    setlocal buftype=nofile
    setlocal noswapfile
    setlocal nobuflisted
    setlocal winfixheight
    setlocal cursorline " make it easy to distinguish
    " setlocal nonumber
    setlocal norelativenumber
    setlocal wrap linebreak
    setlocal showbreak=""

    " clear the buffer
    setlocal noreadonly
    setlocal modifiable
    %delete _


    if filereadable("env/pyvenv.cfg") == 1
        silent exe ".!env\\Scripts\\activate&&python " . shellescape(s:current_buffer_file_path, 1)

    elseif filereadable("../env/pyvenv.cfg") == 1
        silent exe ".!..\\env\\Scripts\\activate&&python " . shellescape(s:current_buffer_file_path, 1)

    elseif filereadable("../../env/pyvenv.cfg") == 1
        silent exe ".!..\\..\\env\\Scripts\\activate&&python " . shellescape(s:current_buffer_file_path, 1)

    else
        silent exe ".!python " . shellescape(s:current_buffer_file_path, 1)
    endif


    " silent execute ".!python " . shellescape(s:current_buffer_file_path, 1)

    " resize window to content length
    silent exe 'resize' . (line('$') + 3)

    " make the buffer non modifiable
    setlocal readonly
    setlocal nomodifiable

    " Move cursor back to original buffer
    silent exe "call feedkeys('\<c-w>\<c-p>')"

    echo "SUCCESSFUL"

endfun


fun! ExecutePythonExternally()
    
    " save and reload current file
    silent exe "update | edit"
    
    " add the console output
    silent exe "cd %:p:h"

    " get file path of current file
    let l:current_buffer_file_path = expand("%")

    if filereadable("env/pyvenv.cfg") == 1
        exe "!env\\Scripts\\activate&&cls&&python " . shellescape(l:current_buffer_file_path, 1)

    elseif filereadable("../env/pyvenv.cfg") == 1
        exe "!..\\env\\Scripts\\activate&&cls&&python " . shellescape(l:current_buffer_file_path, 1)

    elseif filereadable("../../env/pyvenv.cfg") == 1
        exe "!..\\..\\env\\Scripts\\activate&&cls&&python " . shellescape(l:current_buffer_file_path, 1)

    else
        exe "!python " . shellescape(l:current_buffer_file_path, 1)
    endif

endfun
