" Maintainer:     Ryan Young
" Last Modified:  Apr 16, 2022

" Save
nnoremap <Leader>s :w<CR>:call OutputFName("WRITTEN: ")<CR>
" Quit current window
nnoremap <silent> <Leader>q :call QuitIfEmpty()<CR>
" Save and Quit ALL windows
nnoremap <silent> <leader>Q :call SaveWorkspaceAndQuitAll()<CR>
" Save and source file. Use this when editing vimrc for your changes to take effect
nnoremap <Leader>2 :w<bar> :source %<CR>:call OutputFName("SOURCED: ")<CR>

" Repeat last shell command
nnoremap <Leader>f @:

" Jump between paragraphs quickly
nnoremap <C-j> }
nnoremap <C-k> {

" Jump back and forth between files
nnoremap <leader>b <c-^>

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

" Go to end of line FROM insert mode
inoremap )( <Esc>A

" Execute macro stored at 'q'
nnoremap <Leader>3 @q

" CHANGE WINDOWS ACCENTS
nnoremap <Leader>5 :call ChangeAccent()<CR>

" Exit closing brackets/braces/etc with TAB
inoremap <expr> <Tab> search('\%#[]>")}]', 'n') ? '<Right>' : '<Tab>'

" Easily delete previous word while typing using Ctrl-backspace 
inoremap <C-BS> <C-W>

" Change font size
" nnoremap <Leader>font+ :set guifont=Hack\ Nerd\ Font:h14<CR>
" nnoremap <Leader>font- :set guifont=Hack\ Nerd\ Font:h12<CR>

" Cycle through files in directory
nnoremap <Leader>n :call OpenNextFile(1)<CR>
nnoremap <Leader>m :call OpenNextFile(-1)<CR>

" Execute Python in new buffer
nnoremap <Leader>r :call ExecutePythonNewBuffer()<CR>

" Python smart print
" inoremap t t<Esc>:call CheckBehindCursorForPrint()<CR>a

" TERMINAL:--------------------------------------------------------
" Open terminal
nnoremap <silent> <Leader>// :terminal<CR>
" PULL FROM GITHUB
nnoremap <Leader>/pull :terminal<CR>git pull<CR>
" Activate python virtual environment (must be inside proj folder, and environment must be called "env")
nnoremap <Leader>/py :terminal<CR>source env/bin/activate<CR>

"WINDOW MANIPULATION:----------------------------------------------
"Move cursor to adjacent windows
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>
"Move windows 
nnoremap <silent> <Leader>H :wincmd H<CR>
nnoremap <silent> <Leader>J :wincmd J<CR>
nnoremap <silent> <Leader>K :wincmd K<CR>
nnoremap <silent> <Leader>L :wincmd L<CR>
"Resize windows
nnoremap <silent> <Leader>- :vertical resize -20<CR>
nnoremap <silent> <Leader>= :vertical resize +20<CR>
nnoremap <silent> <Leader>[ :resize -15<CR>
nnoremap <silent> <Leader>] :resize +15<CR>

fun! SaveWorkspaceAndQuitAll()
    " exe "call feedkeys(escape(':mks! ~/vimfiles/sessions/sesh1.vim\<CR>', '\'))"
    " echo "SAVED SESSION 1"
    exe "wqa"
endfun


" fun! OutputFile(message)
    " execute 'echom a:message . split(expand("%:p:h"),"\\")[-1] . "\\" . expand("%:t")'
" endfun

fun! QuitIfEmpty()
    if line("$") == 1 && match(getline('.'), "^\\s*$") == 0 
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

" Smart delete/change inside/around
" Create a plugin where, when you try to change or delete inside/around
" something, vim first checks whether your cursor is actually inside (or at
" the start of) the enclosure you're trying to edit. If you're not inside one
" on the current line, then use feedkeys('f(') to try and jump to an
" enclosure. Then, make a second attempt to execute the change/delete 
" inside/around command.
" nnoremap ci[ f[ci[
" nnoremap di[ f[di[
" nnoremap ca[ f[ca[
" nnoremap da[ f[da[
" 
" nnoremap ci( f(ci(
" nnoremap di( f(di(
" nnoremap ca( f(ca(
" nnoremap da( f(da(
" 
" nnoremap ci{ f{ci{
" nnoremap di{ f{di{
" nnoremap ca{ f{ca{
" nnoremap da{ f{da{
" 
" nnoremap ci< f<ci<
" nnoremap di< f<di<
" nnoremap ca< f<ca<
" nnoremap da< f<da<
" 
" nnoremap ci" f"ci"
" nnoremap di" f"di"
" nnoremap ca" f"ca"
" nnoremap da" f"da"
" 
" nnoremap ci' f'ci'
" nnoremap di' f'di'
" nnoremap ca' f'ca'
" nnoremap da' f'da'

fun! CheckBehindCursorForPrint()
    " Auto completes python print statement
    if getline('.') == "print"
        call setline(line('.'), 'print(f"{}")')
        call feedkeys("\<Esc>A\<Esc>hhi")
    elseif getline('.') == "    print"
        call setline(line('.'), '    print(f"{}")')
        call feedkeys("\<Esc>A\<Esc>hhi")
    endif
endfun
