" Maintainer:     Ryan Young
" Last Modified:  Nov 06, 2021

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
