" Author: Ryan Young
" Last modified: 11-04-21

" Save
nnoremap <Leader>s :w<CR>
" Quit current window
nnoremap <Leader>q :q<CR>
" Save and Quit ALL windows
nnoremap <Leader>Q :wqa<CR>
" Save and source file. Use this when editing vimrc for your changes to take effect
nnoremap <Leader>2 :w<bar> :source %<CR>

" Quickly navigate up or down 15 lines
nnoremap 1j 15j
nnoremap 1k 15k

" Open new horizontal split with empty file, AND select recently used files in CtrlP
nnoremap <Leader>a :new<CR>:CtrlPMRU C:/<CR>
" Open new vertical split with empty file, AND select recently used files in CtrlP
nnoremap <Leader>A :vnew<CR>:CtrlPMRU C:/<CR>
" Open new tab in vim (you can swap between tabs by pressing gt)
nnoremap <Leader>T :tabnew<CR>

"Access window commands not already mapped here. This maps to Ctrl-w
nnoremap <Leader>w <C-w>

" Paste from sys clipboard
nnoremap <Leader>pa "+p
" Copy to sys clipboard
vnoremap <Leader>co "+y

" Open graphical file explorer (You can press escape to exit it)
nnoremap <Leader>` :browse e ~/<CR>


" shift visual lines up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Stay in visual mode after indenting a selection
vnoremap < <gv
vnoremap > >gv

" Execute macro stored at 'q'
nnoremap <Leader>3 @q

" CHANGE WINDOWS ACCENTS
nnoremap <Leader>5 :call ChangeAccent()<CR>

" Exit closing brackets/braces/etc with TAB
inoremap <expr> <Tab> search('\%#[]>")}]', 'n') ? '<Right>' : '<Tab>'

" Easily delete previous word while typing using Ctrl-backspace 
inoremap <C-BS> <C-W>

" TERMINAL:--------------------------------------------------------
" Open Powershell
nnoremap <Leader>// :terminal powershell<CR>
" PULL FROM GITHUB
nnoremap <Leader>/pull :terminal powershell<CR>git pull<CR>
" COMMIT TO GITHUB
nnoremap <Leader>/cmt :terminal powershell<CR>git add .<CR>git commit -m ""<Left>
" Activate python virtual environment (must be inside proj folder, and environment must be called "env")
nnoremap <Leader>/py :terminal powershell<CR>env/Scripts/activate<CR>

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


"SMART MARKS:------------------------------------------------------
nnoremap mm mM:echo "GLOBAL MARK 1 SET"<CR>
nnoremap mM mK:echo "GLOBAL MARK 2 SET"<CR>
nnoremap mn mn:echo "LOCAL MARK 1 SET"<CR>
nnoremap mN mb:echo "LOCAL MARK 2 SET"<CR>
nnoremap <Leader>m 'M:call ToggleSmartMarkGlobal()<CR>
nnoremap <Leader>n 'n:call ToggleSmartMarkLocal()<CR>

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

