" Maintainer:     Ryan Young
" Last Modified:  Oct 09, 2022

" Save
nnoremap <Leader>s :w<CR>:call OutputFile("WRITTEN: ")<CR>
" Quit current window
nnoremap <silent> <Leader>q :call QuitIfEmpty()<CR>
" Save and Quit ALL windows
nnoremap <silent> <leader>Q :call SaveWorkspaceAndQuitAll()<CR>
" Save and source file. Use this when editing vimrc for your changes to take effect
nnoremap <Leader>2 :w<bar> :source %<CR>:call OutputFile("SOURCED: ")<CR>

" Repeat last shell command
nnoremap <Leader>f @:

" Jump between paragraphs quickly
nnoremap <C-j> 15j
nnoremap <C-k> 15k

" Jump back and forth between files
nnoremap <leader>b <c-^>

" Open new horizontal split with empty file, AND select recently used files in CtrlP
nnoremap <Leader>a :new<CR>:CtrlPMRU C:/<CR>
" Open new vertical split with empty file, AND select recently used files in CtrlP
nnoremap <Leader>A :vnew<CR>:CtrlPMRU C:/<CR>
" Open new tab in vim (you can swap between tabs by pressing gt)
nnoremap <Leader>t :tabnew<CR>

"Access window commands not already mapped here. This maps to Ctrl-w
nnoremap <Leader>w <C-w>

" Paste from sys clipboard
" nnoremap <Leader>pa "+p
" Copy to sys clipboard
" vnoremap <Leader>co "+y

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
" inoremap <expr> <Tab> search('\%#[]>")}]', 'n') ? '<Right>' : '<Tab>'

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

" Quit bottom buffer
nnoremap <leader>R <C-w>j<C-w>j:q<CR><C-w>k

" Line spacing
nnoremap <leader>SP1 :set linespace=0<CR>
nnoremap <leader>SP2 :set linespace=3<CR>
nnoremap <leader>SP3 :set linespace=4<CR>
nnoremap <leader>SP4 :set linespace=5<CR>
nnoremap <leader>SP5 :set linespace=6<CR>

" Change background between light and dark modes
nnoremap <Leader>1l :set background=light<CR>
nnoremap <Leader>1d :set background=dark<CR>

" TERMINAL:--------------------------------------------------------
" Open terminal
nnoremap <silent> <Leader>// :terminal<CR>
" PULL FROM GITHUB
nnoremap <Leader>/pull :terminal<CR>git pull<CR>
" Activate python virtual environment (must be inside proj folder, and environment must be called "env")
nnoremap <Leader>/py :terminal<CR>source env/bin/activate<CR>

" PYTHON:----------------------------------------------------------
nnoremap <silent> <leader>pt it_start = time.time()<CR>print(time.time() - t_start)<Esc>ddk
" nnoremap <silent> <leader>pP iprint(time.time() - t_start)<Esc>I<Esc>

"WINDOW MANIPULATION:----------------------------------------------
" Move cursor to adjacent windows
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>
" Move windows 
nnoremap <silent> <Leader>H :wincmd H<CR>
nnoremap <silent> <Leader>J :wincmd J<CR>
nnoremap <silent> <Leader>K :wincmd K<CR>
nnoremap <silent> <Leader>L :wincmd L<CR>
" Resize windows
nnoremap <silent> <Leader>- :vertical resize -20<CR>
nnoremap <silent> <Leader>= :vertical resize +20<CR>
nnoremap <silent> <Leader>[ :resize -15<CR>
nnoremap <silent> <Leader>] :resize +15<CR>
" Move Tabs
nnoremap <silent> > :tabn<CR>
nnoremap <silent> < :tabp<CR>
