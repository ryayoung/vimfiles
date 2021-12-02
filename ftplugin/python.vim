" Maintainer:     Ryan Young
" Last Modified:  Nov 30, 2021

" Run Python file
" nnoremap <leader>r :!../env/Scripts/activate;clear;python %<CR>
nnoremap <silent> <buffer> <leader>r :call ExecutePythonNewBuffer()<CR>

nnoremap <silent> <buffer> <leader>R :call ExecutePythonExternally()<CR>



