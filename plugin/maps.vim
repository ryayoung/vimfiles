" Author: Ryan Young
" Last modified: 10-30-21
"Save
nnoremap <Leader>s :w<CR>
"Quit current window
nnoremap <Leader>q :q<CR>
"Save and Quit ALL windows
nnoremap <Leader>Q :wqa<CR>
"Save and source file. Use this when editing vimrc for your changes to take effect
nnoremap <Leader>2 :w<bar> :source %<CR>

"Open new horizontal split with empty file
nnoremap <Leader>a :new<CR>
"Open new vertical split with empty file
nnoremap <Leader>A :vnew<CR>
"Open new tab in vim (you can swap between tabs by pressing gt)
nnoremap <Leader>T :tabnew<CR>

"Open Powershell
nnoremap <Leader>t :terminal powershell<CR>
"Change LOCAL working directory to current file
nnoremap <Leader>cur :lcd %:p:h<CR>
"Change GLOBAL working directory to current file
nnoremap <Leader>cg :cd %:p:h<CR>

"Paste from sys clipboard
nnoremap <Leader>pa "+p
"Copy to sys clipboard
vnoremap <Leader>co "+y

"shift visual lines up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"Quickly set font size
nnoremap <Leader>f :call SetSmallerFont()<CR>:echo GetFontSize()<CR>
nnoremap <Leader>F :call SetLargerFont()<CR>:echo GetFontSize()<CR>

"Exit closing brackets/braces/etc with TAB
inoremap <expr> <Tab> search('\%#[]>")}]', 'n') ? '<Right>' : '<Tab>'

"Easily delete previous word while typing using Ctrl-backspace 
inoremap <C-BS> <C-W>

"Execute macro stored at 'q'
nnoremap <Leader>3 @q

"Create header at the top of the file with name and date
nnoremap <Leader>4 :call CreateHeader()<CR>

"WINDOW MANIPULATION:----------------------------------------------
"Move cursor to adjacent windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
"Move windows 
nnoremap <Leader>H :wincmd H<CR>
nnoremap <Leader>J :wincmd J<CR>
nnoremap <Leader>K :wincmd K<CR>
nnoremap <Leader>L :wincmd L<CR>
"Resize windows
nnoremap <Leader>- :vertical resize -20<CR>
nnoremap <Leader>= :vertical resize +20<CR>
nnoremap <Leader>[ :resize -15<CR>
nnoremap <Leader>] :resize +15<CR>
"Resize windows proportionally by 50%
"nnoremap <Leader>- :call ResizeWindow("v", -1)<CR>
"nnoremap <Leader>= :call ResizeWindow("v", 1)<CR>
"nnoremap <Leader>[ :call ResizeWindow("h", -1)<CR>
"nnoremap <Leader>] :call ResizeWindow("h", 1)<CR>

"Access window commands not already mapped here. This maps to Ctrl-w
nnoremap <Leader>w <C-w>

"SMART MARKS:------------------------------------------------------
nnoremap mm mM:echo "GLOBAL MARK 1 SET"<CR>
nnoremap mM mK:echo "GLOBAL MARK 2 SET"<CR>
nnoremap mn mn:echo "LOCAL MARK 1 SET"<CR>
nnoremap mN mb:echo "LOCAL MARK 2 SET"<CR>
nnoremap <Leader>m 'M:call ToggleSmartMarkGlobal()<CR>
nnoremap <Leader>n 'n:call ToggleSmartMarkLocal()<CR>

"FILETYPE DEPENDENT:-----------------------------------------------
augroup htmlmaps
    autocmd!
augroup END

augroup sqlmaps
    autocmd!
augroup END


"Function to resize window proportionally (Ex: 33%, 50%, etc.)
"Not currentl in use. To use it, re-map window resize commands
"Example - replace ':vertical resize +20' with ':call ResizeWindow("v", 1)'
function! ResizeWindow(type, change) "Type: v or h. Change: -1 or 1
    let l:height = winheight(0)
    let l:width = winwidth(0)
    let l:amount = 2 " 3 here means an amount of 1/3 increase or decrease

    if a:type == "v"
        execute "vertical resize " . (l:width + ((l:width / l:amount) * a:change))
    elseif a:type == "h"
        execute "resize " . (l:height + ((l:height / l:amount) * a:change))
    endif
endfunction

