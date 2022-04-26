let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <D-BS> 
inoremap <M-BS> 
inoremap <M-Down> }
inoremap <D-Down> <C-End>
inoremap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
inoremap <C-BS> 
nnoremap <NL> 
nnoremap  
map  <Plug>(ctrlp)
nnoremap <silent>  ] :resize +15
nnoremap <silent>  [ :resize -15
nnoremap <silent>  = :vertical resize +20
nnoremap <silent>  - :vertical resize -20
nnoremap <silent>  L :wincmd L
nnoremap <silent>  K :wincmd K
nnoremap <silent>  J :wincmd J
nnoremap <silent>  H :wincmd H
nnoremap <silent>  l :wincmd l
nnoremap <silent>  k :wincmd k
nnoremap <silent>  j :wincmd j
nnoremap <silent>  h :wincmd h
nnoremap  /py :terminal powershellenv/Scripts/activate
nnoremap  /cmt :terminal powershellgit add .git commit -m ""<Left>
nnoremap  /pull :terminal powershellgit pull
nnoremap <silent>  // :terminal powershell
nnoremap  5 :call ChangeAccent()
nnoremap  3 @q
nnoremap  ` :browse e ~/
vnoremap  co "+y
nnoremap  pa "+p
nnoremap  w 
nnoremap <silent>  T :call ToggleHeader()
nnoremap  A :vnew:CtrlPMRU C:/
nnoremap  a :new:CtrlPMRU C:/
nnoremap  b 
nnoremap  f @:
nnoremap  2 :w| :source %:call OutputFName("SOURCED: ")
nnoremap <silent>  Q :call SaveWorkspaceAndQuitAll()
nnoremap <silent>  q :call QuitIfEmpty()
nnoremap  s :w:call OutputFName("WRITTEN: ")
nnoremap  .airb :cd /Users/ryanyoung/ryayoung/complex-data-analytics/course-project/main:call OutputDirName("DIR: ")
nnoremap  .complex :cd /Users/ryayoung/complex-data-analytics:call OutputDirName("DIR: ")
nnoremap  .opt :cd /Users/ryanyoung/Library/Mobile Documents/com~apple~CloudDocs/Documents/school/optimization_modeling:call OutputDirName("DIR: ")
nnoremap  .labs :cd /Users/ryanyoung/ryayoung/web-ii/starter-project/labs:call OutputDirName("DIR: ")
nnoremap  .server :cd /Users/ryanyoung/ryayoung/web-ii/starter-project/server:call OutputDirName("DIR: ")
nnoremap  .web :cd /Users/ryanyoung/ryayoung/web-ii/starter-project:call OutputDirName("DIR: ")
nnoremap  .sql :cd /Users/ryanyoung/ryayoung/twitter-data/main/sql:call OutputDirName("DIR: ")
nnoremap  .random :cd /Users/ryanyoung/ryayoung/twitter-data/random-files:call OutputDirName("DIR: ")
nnoremap  .main :cd /Users/ryanyoung/ryayoung/twitter-data/main:call OutputDirName("DIR: ")
nnoremap  .cloud :cd /Users/ryanyoung/ryayoung/twitter-data/cloud-function:call OutputDirName("DIR: ")
nnoremap  .twitter :cd /Users/ryanyoung/ryayoung/twitter-data:call OutputDirName("DIR: ")
nnoremap  .ryayoung :cd ~\ryayoung
nnoremap  .# :mks! ~/.vim/sessions/sesh3.vim
nnoremap  .@ :mks! ~/.vim/sessions/sesh2.vim
nnoremap  .! :mks! ~/.vim/sessions/sesh1.vim
nnoremap  .3 :source ~/.vim/sessions/sesh3.vim
nnoremap  .2 :source ~/.vim/sessions/sesh2.vim
nnoremap  .1 :source ~/.vim/sessions/sesh1.vim
nnoremap  .cg :cd %:p:h:call OutputDirName("GLOBAL DIR: ")
nnoremap  .cur :lcd %:p:h:call OutputDirName("LOCAL DIR: ")
nnoremap  ./ :cd 
nnoremap  .. :cd ..:call OutputDirName("BACK TO: ")
nnoremap  ? s:view ~\vimfiles\CheatSheet.txt:call OutputFName("FILE: ")
nnoremap  .map :e ~/.vim/plugin/map.vim:call OutputFName("FILE: ")
nnoremap  .set :e ~/.vim/plugin/set.vim:call OutputFName("FILE: ")
nnoremap  .vrc :e ~/.vim/vimrc:call OutputFName("FILE: ")
nnoremap  .plugin :cd ~\vimfiles\plugin:call OutputDirName("DIR: ")
nnoremap  .ftplugin :cd ~\vimfiles\ftplugin:call OutputDirName("DIR: ")
nnoremap  .vim :cd ~/.vim\:call OutputDirName("DIR: ")
nnoremap  .home :cd ~:call OutputDirName("DIR: ")
nnoremap  cn :CtrlP getcwd()
nnoremap  cd :CtrlPMRU C:/ 
nnoremap    :CtrlPBuffer
nnoremap  1d :set background=dark
nnoremap  1l :set background=light
nnoremap  u :UndotreeShow
nnoremap  cx :vs.| :vertical resize 20jj
nnoremap  cc :Vex| :vertical resize 20jj
vnoremap < <gv
vnoremap > >gv
vnoremap J :m '>+1gv=gv
vnoremap K :m '<-2gv=gv
xmap S <Plug>VSurround
vnoremap <silent> T :call ToggleComment()gv
nnoremap <silent> T :call ToggleComment()
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
smap gx <Plug>NetrwBrowseXVis
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
snoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
noremap <M-Down> }
noremap <D-Down> <C-End>
noremap <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
nnoremap <silent> <Plug>SurroundRepeat .
map <C-P> <Plug>(ctrlp)
nnoremap <silent> <Plug>(ctrlp) :CtrlP
nnoremap <C-K> 
nnoremap <C-J> 
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  <Plug>Isurround
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set completeopt=menu,preview,menuone,noselect
set directory=~/.vim/tmp//,.,~/tmp,/var/tmp,/tmp
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=Hack\ Nerd\ Font:h13
set guioptions=eg
set guitablabel=%M%t
set helplang=en
set hidden
set ignorecase
set incsearch
set laststatus=2
set mouse=a
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set pumheight=10
set runtimepath=~/.vim,~/.vim/plugged/gruvbox,~/.vim/plugged/typescript-vim,~/.vim/plugged/ctrlp.vim,~/.vim/plugged/undotree,~/.vim/plugged/vim-simple-complete,~/.vim/plugged/vim-uppercase-sql,~/.vim/plugged/vim-repeat,~/.vim/plugged/lightline.vim,~/.vim/plugged/lightline-gruvbox.vim,~/.vim/plugged/emmet-vim,~/.vim/plugged/pear-tree,~/.vim/plugged/vim-surround,/Applications/MacVim.app/Contents/Resources/vim/vimfiles,/Applications/MacVim.app/Contents/Resources/vim/runtime,/Applications/MacVim.app/Contents/Resources/vim/vimfiles/after,~/.vim/plugged/pear-tree/after,~/.vim/after
set scrolloff=4
set shiftwidth=4
set shortmess=filnxtToOSI
set noshowmode
set smartcase
set smartindent
set softtabstop=4
set splitbelow
set splitright
set tabline=%!lightline#tabline()
set tabstop=4
set termencoding=utf-8
set undodir=~/vimfiles/undodir
set undofile
set wildignore=*.pyc
set window=119
set winminheight=0
set winminwidth=0
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/ryayoung/twitter-data/mongo
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
set stal=2
tabnew
tabrewind
edit pull-tweets.py
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 58 + 60) / 120)
exe 'vert 1resize ' . ((&columns * 107 + 105) / 210)
exe '2resize ' . ((&lines * 59 + 60) / 120)
exe 'vert 2resize ' . ((&columns * 107 + 105) / 210)
exe 'vert 3resize ' . ((&columns * 102 + 105) / 210)
argglobal
balt to_sql.py
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <BS> <Plug>(PearTreeBackspace)
inoremap <buffer> <silent> <expr> <Plug>(PearTreeSpace) pear_tree#insert_mode#Space()
inoremap <buffer> <silent> <expr> <Plug>(PearTreeJNR) pear_tree#insert_mode#JumpNReturn()
inoremap <buffer> <silent> <expr> <Plug>(PearTreeJump) pear_tree#insert_mode#JumpOut()
inoremap <buffer> <silent> <expr> <Plug>(PearTreeExpandOne) pear_tree#insert_mode#ExpandOne()
inoremap <buffer> <silent> <expr> <Plug>(PearTreeFinishExpansion) pear_tree#insert_mode#Expand()
inoremap <buffer> <silent> <expr> <Plug>(PearTreeExpand) pear_tree#insert_mode#PrepareExpansion()
inoremap <buffer> <silent> <expr> <Plug>(PearTreeBackspace) pear_tree#insert_mode#Backspace()
inoremap <buffer> <silent> <expr> <Plug>(PearTreeCloser_}) pear_tree#insert_mode#HandleCloser('}')
inoremap <buffer> <silent> <expr> <Plug>(PearTreeOpener_{) pear_tree#insert_mode#TerminateOpener('{')
inoremap <buffer> <silent> <expr> <Plug>(PearTreeCloser_)) pear_tree#insert_mode#HandleCloser(')')
inoremap <buffer> <silent> <expr> <Plug>(PearTreeOpener_() pear_tree#insert_mode#TerminateOpener('(')
inoremap <buffer> <silent> <expr> <Plug>(PearTreeOpener_') pear_tree#insert_mode#TerminateOpener('''')
inoremap <buffer> <silent> <expr> <Plug>(PearTreeCloser_]) pear_tree#insert_mode#HandleCloser(']')
inoremap <buffer> <silent> <expr> <Plug>(PearTreeOpener_[) pear_tree#insert_mode#TerminateOpener('[')
inoremap <buffer> <silent> <expr> <Plug>(PearTreeOpener_") pear_tree#insert_mode#TerminateOpener('"')
inoremap <buffer> <silent> <expr> <Plug>(PearTreeOpener_`) pear_tree#insert_mode#TerminateOpener('`')
imap <buffer>  <Plug>(PearTreeExpand)
imap <buffer>  <Plug>(PearTreeFinishExpansion)
imap <buffer> " <Plug>(PearTreeOpener_")
imap <buffer> ' <Plug>(PearTreeOpener_')
imap <buffer> ( <Plug>(PearTreeOpener_()
imap <buffer> ) <Plug>(PearTreeCloser_))
imap <buffer> [ <Plug>(PearTreeOpener_[)
imap <buffer> ] <Plug>(PearTreeCloser_])
imap <buffer> ` <Plug>(PearTreeOpener_`)
imap <buffer> { <Plug>(PearTreeOpener_{)
imap <buffer> } <Plug>(PearTreeCloser_})
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=^\\s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(substitute(substitute(v:fname,b:grandparent_match,b:grandparent_sub,''),b:parent_match,b:parent_sub,''),b:child_match,b:child_sub,'g')
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],:,!^F,o,O,e,<:>,=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=python3\ -m\ pydoc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=python3complete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%{lightline#link()}%#LightlineLeft_active_0#%(\ %{lightline#mode()}\ %)%{(&paste)?\"|\":\"\"}%(\ %{&paste?\"PASTE\":\"\"}\ %)%#LightlineLeft_active_0_1#%#LightlineLeft_active_1#%(\ %R\ %)%{(&readonly)&&(1||(&modified||!&modifiable))?\"|\":\"\"}%(\ %t\ %)%{(&modified||!&modifiable)?\"|\":\"\"}%(\ %M\ %)%#LightlineLeft_active_1_2#%#LightlineMiddle_active#%=%#LightlineRight_active_2_3#%#LightlineRight_active_2#%(\ %{&ff}\ %)%{1||1?\"|\":\"\"}%(\ %{&fenc!=#\"\"?&fenc:&enc}\ %)%{1?\"|\":\"\"}%(\ %{&ft!=#\"\"?&ft:\"no\ ft\"}\ %)%#LightlineRight_active_1_2#%#LightlineRight_active_1#%(\ %3p%%\ %)%#LightlineRight_active_0_1#%#LightlineRight_active_0#%(\ %3l:%-2c\ %)
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 199 - ((6 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 199
normal! 025|
wincmd w
argglobal
if bufexists("to_sql.py") | buffer to_sql.py | else | edit to_sql.py | endif
balt cols.py
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <BS> <Plug>(PearTreeBackspace)
inoremap <buffer> <silent> <expr> <Plug>(PearTreeSpace) pear_tree#insert_mode#Space()
inoremap <buffer> <silent> <expr> <Plug>(PearTreeJNR) pear_tree#insert_mode#JumpNReturn()
inoremap <buffer> <silent> <expr> <Plug>(PearTreeJump) pear_tree#insert_mode#JumpOut()
inoremap <buffer> <silent> <expr> <Plug>(PearTreeExpandOne) pear_tree#insert_mode#ExpandOne()
inoremap <buffer> <silent> <expr> <Plug>(PearTreeFinishExpansion) pear_tree#insert_mode#Expand()
inoremap <buffer> <silent> <expr> <Plug>(PearTreeExpand) pear_tree#insert_mode#PrepareExpansion()
inoremap <buffer> <silent> <expr> <Plug>(PearTreeBackspace) pear_tree#insert_mode#Backspace()
inoremap <buffer> <silent> <expr> <Plug>(PearTreeCloser_}) pear_tree#insert_mode#HandleCloser('}')
inoremap <buffer> <silent> <expr> <Plug>(PearTreeOpener_{) pear_tree#insert_mode#TerminateOpener('{')
inoremap <buffer> <silent> <expr> <Plug>(PearTreeCloser_)) pear_tree#insert_mode#HandleCloser(')')
inoremap <buffer> <silent> <expr> <Plug>(PearTreeOpener_() pear_tree#insert_mode#TerminateOpener('(')
inoremap <buffer> <silent> <expr> <Plug>(PearTreeOpener_') pear_tree#insert_mode#TerminateOpener('''')
inoremap <buffer> <silent> <expr> <Plug>(PearTreeCloser_]) pear_tree#insert_mode#HandleCloser(']')
inoremap <buffer> <silent> <expr> <Plug>(PearTreeOpener_[) pear_tree#insert_mode#TerminateOpener('[')
inoremap <buffer> <silent> <expr> <Plug>(PearTreeOpener_") pear_tree#insert_mode#TerminateOpener('"')
inoremap <buffer> <silent> <expr> <Plug>(PearTreeOpener_`) pear_tree#insert_mode#TerminateOpener('`')
imap <buffer>  <Plug>(PearTreeExpand)
imap <buffer>  <Plug>(PearTreeFinishExpansion)
imap <buffer> " <Plug>(PearTreeOpener_")
imap <buffer> ' <Plug>(PearTreeOpener_')
imap <buffer> ( <Plug>(PearTreeOpener_()
imap <buffer> ) <Plug>(PearTreeCloser_))
imap <buffer> [ <Plug>(PearTreeOpener_[)
imap <buffer> ] <Plug>(PearTreeCloser_])
imap <buffer> ` <Plug>(PearTreeOpener_`)
imap <buffer> { <Plug>(PearTreeOpener_{)
imap <buffer> } <Plug>(PearTreeCloser_})
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=^\\s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(substitute(substitute(v:fname,b:grandparent_match,b:grandparent_sub,''),b:parent_match,b:parent_sub,''),b:child_match,b:child_sub,'g')
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],:,!^F,o,O,e,<:>,=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=python3\ -m\ pydoc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=python3complete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%{lightline#link()}%#LightlineLeft_inactive_0#%(\ %t\ %)%#LightlineLeft_inactive_0_1#%#LightlineMiddle_inactive#%=%#LightlineRight_inactive_1_2#%#LightlineRight_inactive_1#%(\ %3p%%\ %)%#LightlineRight_inactive_0_1#%#LightlineRight_inactive_0#%(\ %3l:%-2c\ %)
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 17 - ((16 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 17
normal! 0
wincmd w
argglobal
if bufexists("~/ryayoung/twitter-data/cloud-function/fx.py") | buffer ~/ryayoung/twitter-data/cloud-function/fx.py | else | edit ~/ryayoung/twitter-data/cloud-function/fx.py | endif
balt ~/ryayoung/twitter-data/main/sql/build-twitter-2.sql
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=^\\s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(substitute(substitute(v:fname,b:grandparent_match,b:grandparent_sub,''),b:parent_match,b:parent_sub,''),b:child_match,b:child_sub,'g')
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],:,!^F,o,O,e,<:>,=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=python3\ -m\ pydoc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=python3complete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%{lightline#link()}%#LightlineLeft_inactive_0#%(\ %t\ %)%#LightlineLeft_inactive_0_1#%#LightlineMiddle_inactive#%=%#LightlineRight_inactive_1_2#%#LightlineRight_inactive_1#%(\ %3p%%\ %)%#LightlineRight_inactive_0_1#%#LightlineRight_inactive_0#%(\ %3l:%-2c\ %)
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 61 - ((4 * winheight(0) + 59) / 118)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 61
normal! 05|
wincmd w
exe '1resize ' . ((&lines * 58 + 60) / 120)
exe 'vert 1resize ' . ((&columns * 107 + 105) / 210)
exe '2resize ' . ((&lines * 59 + 60) / 120)
exe 'vert 2resize ' . ((&columns * 107 + 105) / 210)
exe 'vert 3resize ' . ((&columns * 102 + 105) / 210)
tabnext
edit ~/ryayoung/twitter-data/main/sql/tweet-ids-from-symbol.sql
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 42 + 60) / 120)
exe 'vert 1resize ' . ((&columns * 147 + 105) / 210)
exe '2resize ' . ((&lines * 34 + 60) / 120)
exe 'vert 2resize ' . ((&columns * 147 + 105) / 210)
exe '3resize ' . ((&lines * 40 + 60) / 120)
exe 'vert 3resize ' . ((&columns * 147 + 105) / 210)
exe 'vert 4resize ' . ((&columns * 67 + 105) / 210)
argglobal
balt ~/ryayoung/twitter-data/main/sql/reddit-procedures.sql
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <C-C>R :call sqlcomplete#Map("resetCache")
inoremap <buffer> <Left> =sqlcomplete#DrillOutOfColumns()
inoremap <buffer> <Right> =sqlcomplete#DrillIntoTable()
inoremap <buffer> <C-C>L :call sqlcomplete#Map("column_csv")
inoremap <buffer> <C-C>l :call sqlcomplete#Map("column_csv")
inoremap <buffer> <C-C>c :call sqlcomplete#Map("column")
inoremap <buffer> <C-C>v :call sqlcomplete#Map("view")
inoremap <buffer> <C-C>p :call sqlcomplete#Map("procedure")
inoremap <buffer> <C-C>t :call sqlcomplete#Map("table")
inoremap <buffer> <C-C>s :call sqlcomplete#Map("sqlStatement\\w*")
inoremap <buffer> <C-C>T :call sqlcomplete#Map("sqlType\\w*")
inoremap <buffer> <C-C>o :call sqlcomplete#Map("sqlOption\\w*")
inoremap <buffer> <C-C>f :call sqlcomplete#Map("sqlFunction\\w*")
inoremap <buffer> <C-C>k :call sqlcomplete#Map("sqlKeyword\\w*")
inoremap <buffer> <C-C>a :call sqlcomplete#Map("syntax")
xnoremap <buffer> <silent> [" :exec "normal! gv"|call search('\(^\s*\(--\|\/\/\|\*\|\/\*\|\*\/\).*\n\)\(^\s*\(--\|\/\/\|\*\|\/\*\|\*\/\)\)\@!', "W" )
nnoremap <buffer> <silent> [" :call search('\(^\s*\(--\|\/\/\|\*\|\/\*\|\*\/\).*\n\)\(^\s*\(--\|\/\/\|\*\|\/\*\|\*\/\)\)\@!', "W" )
xnoremap <buffer> <silent> [{ ?\c^\s*\(\(create\)\s\+\(or\s\+replace\s\+\)\{,1}\)\{,1}\<\(function\|procedure\|event\|\(existing\|global\s\+temporary\s\+\)\{,1}table\|trigger\|schema\|service\|publication\|database\|datatype\|domain\|index\|subscription\|synchronization\|view\|variable\)\>
nnoremap <buffer> <silent> [{ :call search('\c^\s*\(\(create\)\s\+\(or\s\+replace\s\+\)\{,1}\)\{,1}\<\(function\|procedure\|event\|\(existing\|global\s\+temporary\s\+\)\{,1}table\|trigger\|schema\|service\|publication\|database\|datatype\|domain\|index\|subscription\|synchronization\|view\|variable\)\>', 'bW')
xnoremap <buffer> <silent> [] :exec "normal! gv"|call search('\c^\s*end\W*$', 'bW' )
xnoremap <buffer> <silent> [[ :exec "normal! gv"|call search('\c^\s*begin\>', 'bW' )
nnoremap <buffer> <silent> [] :call search('\c^\s*end\W*$', 'bW' )
nnoremap <buffer> <silent> [[ :call search('\c^\s*begin\>', 'bW' )
xnoremap <buffer> <silent> ]" :exec "normal! gv"|call search('^\(\s*\(--\|\/\/\|\*\|\/\*\|\*\/\).*\n\)\@<!\(\s*\(--\|\/\/\|\*\|\/\*\|\*\/\)\)', "W" )
nnoremap <buffer> <silent> ]" :call search('^\(\s*\(--\|\/\/\|\*\|\/\*\|\*\/\).*\n\)\@<!\(\s*\(--\|\/\/\|\*\|\/\*\|\*\/\)\)', "W" )
xnoremap <buffer> <silent> ]} /\c^\s*\(\(create\)\s\+\(or\s\+replace\s\+\)\{,1}\)\{,1}\<\(function\|procedure\|event\|\(existing\|global\s\+temporary\s\+\)\{,1}table\|trigger\|schema\|service\|publication\|database\|datatype\|domain\|index\|subscription\|synchronization\|view\|variable\)\>
nnoremap <buffer> <silent> ]} :call search('\c^\s*\(\(create\)\s\+\(or\s\+replace\s\+\)\{,1}\)\{,1}\<\(function\|procedure\|event\|\(existing\|global\s\+temporary\s\+\)\{,1}table\|trigger\|schema\|service\|publication\|database\|datatype\|domain\|index\|subscription\|synchronization\|view\|variable\)\>', 'W')
xnoremap <buffer> <silent> ][ :exec "normal! gv"|call search('\c^\s*end\W*$', 'W' )
xnoremap <buffer> <silent> ]] :exec "normal! gv"|call search('\c^\s*begin\>', 'W' )
nnoremap <buffer> <silent> ][ :call search('\c^\s*end\W*$', 'W' )
nnoremap <buffer> <silent> ]] :call search('\c^\s*begin\>', 'W' )
inoremap <buffer> R :call sqlcomplete#Map("resetCache")
inoremap <buffer> L :call sqlcomplete#Map("column_csv")
inoremap <buffer> l :call sqlcomplete#Map("column_csv")
inoremap <buffer> c :call sqlcomplete#Map("column")
inoremap <buffer> v :call sqlcomplete#Map("view")
inoremap <buffer> p :call sqlcomplete#Map("procedure")
inoremap <buffer> t :call sqlcomplete#Map("table")
inoremap <buffer> s :call sqlcomplete#Map("sqlStatement\\w*")
inoremap <buffer> T :call sqlcomplete#Map("sqlType\\w*")
inoremap <buffer> o :call sqlcomplete#Map("sqlOption\\w*")
inoremap <buffer> f :call sqlcomplete#Map("sqlFunction\\w*")
inoremap <buffer> k :call sqlcomplete#Map("sqlKeyword\\w*")
inoremap <buffer> a :call sqlcomplete#Map("syntax")
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,:--,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=\\c\\<\\(VARIABLE\\|DECLARE\\|IN\\|OUT\\|INOUT\\)\\>
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sql'
setlocal filetype=sql
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=qc
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetSQLIndent()
setlocal indentkeys=0),0],!^F,o,O,=~end,=~else,=~elseif,=~elsif,0=~when,0=)
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=sqlcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%{lightline#link()}%#LightlineLeft_active_0#%(\ %{lightline#mode()}\ %)%{(&paste)?\"|\":\"\"}%(\ %{&paste?\"PASTE\":\"\"}\ %)%#LightlineLeft_active_0_1#%#LightlineLeft_active_1#%(\ %R\ %)%{(&readonly)&&(1||(&modified||!&modifiable))?\"|\":\"\"}%(\ %t\ %)%{(&modified||!&modifiable)?\"|\":\"\"}%(\ %M\ %)%#LightlineLeft_active_1_2#%#LightlineMiddle_active#%=%#LightlineRight_active_2_3#%#LightlineRight_active_2#%(\ %{&ff}\ %)%{1||1?\"|\":\"\"}%(\ %{&fenc!=#\"\"?&fenc:&enc}\ %)%{1?\"|\":\"\"}%(\ %{&ft!=#\"\"?&ft:\"no\ ft\"}\ %)%#LightlineRight_active_1_2#%#LightlineRight_active_1#%(\ %3p%%\ %)%#LightlineRight_active_0_1#%#LightlineRight_active_0#%(\ %3l:%-2c\ %)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'sql'
setlocal syntax=sql
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists("~/ryayoung/twitter-data/main/sql/twitter-procedures.sql") | buffer ~/ryayoung/twitter-data/main/sql/twitter-procedures.sql | else | edit ~/ryayoung/twitter-data/main/sql/twitter-procedures.sql | endif
balt ~/ryayoung/twitter-data/main/sql/tweet-ids-from-symbol.sql
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <C-C>R :call sqlcomplete#Map("resetCache")
inoremap <buffer> <Left> =sqlcomplete#DrillOutOfColumns()
inoremap <buffer> <Right> =sqlcomplete#DrillIntoTable()
inoremap <buffer> <C-C>L :call sqlcomplete#Map("column_csv")
inoremap <buffer> <C-C>l :call sqlcomplete#Map("column_csv")
inoremap <buffer> <C-C>c :call sqlcomplete#Map("column")
inoremap <buffer> <C-C>v :call sqlcomplete#Map("view")
inoremap <buffer> <C-C>p :call sqlcomplete#Map("procedure")
inoremap <buffer> <C-C>t :call sqlcomplete#Map("table")
inoremap <buffer> <C-C>s :call sqlcomplete#Map("sqlStatement\\w*")
inoremap <buffer> <C-C>T :call sqlcomplete#Map("sqlType\\w*")
inoremap <buffer> <C-C>o :call sqlcomplete#Map("sqlOption\\w*")
inoremap <buffer> <C-C>f :call sqlcomplete#Map("sqlFunction\\w*")
inoremap <buffer> <C-C>k :call sqlcomplete#Map("sqlKeyword\\w*")
inoremap <buffer> <C-C>a :call sqlcomplete#Map("syntax")
xnoremap <buffer> <silent> [" :exec "normal! gv"|call search('\(^\s*\(--\|\/\/\|\*\|\/\*\|\*\/\).*\n\)\(^\s*\(--\|\/\/\|\*\|\/\*\|\*\/\)\)\@!', "W" )
nnoremap <buffer> <silent> [" :call search('\(^\s*\(--\|\/\/\|\*\|\/\*\|\*\/\).*\n\)\(^\s*\(--\|\/\/\|\*\|\/\*\|\*\/\)\)\@!', "W" )
xnoremap <buffer> <silent> [{ ?\c^\s*\(\(create\)\s\+\(or\s\+replace\s\+\)\{,1}\)\{,1}\<\(function\|procedure\|event\|\(existing\|global\s\+temporary\s\+\)\{,1}table\|trigger\|schema\|service\|publication\|database\|datatype\|domain\|index\|subscription\|synchronization\|view\|variable\)\>
nnoremap <buffer> <silent> [{ :call search('\c^\s*\(\(create\)\s\+\(or\s\+replace\s\+\)\{,1}\)\{,1}\<\(function\|procedure\|event\|\(existing\|global\s\+temporary\s\+\)\{,1}table\|trigger\|schema\|service\|publication\|database\|datatype\|domain\|index\|subscription\|synchronization\|view\|variable\)\>', 'bW')
xnoremap <buffer> <silent> [] :exec "normal! gv"|call search('\c^\s*end\W*$', 'bW' )
xnoremap <buffer> <silent> [[ :exec "normal! gv"|call search('\c^\s*begin\>', 'bW' )
nnoremap <buffer> <silent> [] :call search('\c^\s*end\W*$', 'bW' )
nnoremap <buffer> <silent> [[ :call search('\c^\s*begin\>', 'bW' )
xnoremap <buffer> <silent> ]" :exec "normal! gv"|call search('^\(\s*\(--\|\/\/\|\*\|\/\*\|\*\/\).*\n\)\@<!\(\s*\(--\|\/\/\|\*\|\/\*\|\*\/\)\)', "W" )
nnoremap <buffer> <silent> ]" :call search('^\(\s*\(--\|\/\/\|\*\|\/\*\|\*\/\).*\n\)\@<!\(\s*\(--\|\/\/\|\*\|\/\*\|\*\/\)\)', "W" )
xnoremap <buffer> <silent> ]} /\c^\s*\(\(create\)\s\+\(or\s\+replace\s\+\)\{,1}\)\{,1}\<\(function\|procedure\|event\|\(existing\|global\s\+temporary\s\+\)\{,1}table\|trigger\|schema\|service\|publication\|database\|datatype\|domain\|index\|subscription\|synchronization\|view\|variable\)\>
nnoremap <buffer> <silent> ]} :call search('\c^\s*\(\(create\)\s\+\(or\s\+replace\s\+\)\{,1}\)\{,1}\<\(function\|procedure\|event\|\(existing\|global\s\+temporary\s\+\)\{,1}table\|trigger\|schema\|service\|publication\|database\|datatype\|domain\|index\|subscription\|synchronization\|view\|variable\)\>', 'W')
xnoremap <buffer> <silent> ][ :exec "normal! gv"|call search('\c^\s*end\W*$', 'W' )
xnoremap <buffer> <silent> ]] :exec "normal! gv"|call search('\c^\s*begin\>', 'W' )
nnoremap <buffer> <silent> ][ :call search('\c^\s*end\W*$', 'W' )
nnoremap <buffer> <silent> ]] :call search('\c^\s*begin\>', 'W' )
inoremap <buffer> R :call sqlcomplete#Map("resetCache")
inoremap <buffer> L :call sqlcomplete#Map("column_csv")
inoremap <buffer> l :call sqlcomplete#Map("column_csv")
inoremap <buffer> c :call sqlcomplete#Map("column")
inoremap <buffer> v :call sqlcomplete#Map("view")
inoremap <buffer> p :call sqlcomplete#Map("procedure")
inoremap <buffer> t :call sqlcomplete#Map("table")
inoremap <buffer> s :call sqlcomplete#Map("sqlStatement\\w*")
inoremap <buffer> T :call sqlcomplete#Map("sqlType\\w*")
inoremap <buffer> o :call sqlcomplete#Map("sqlOption\\w*")
inoremap <buffer> f :call sqlcomplete#Map("sqlFunction\\w*")
inoremap <buffer> k :call sqlcomplete#Map("sqlKeyword\\w*")
inoremap <buffer> a :call sqlcomplete#Map("syntax")
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,:--,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=\\c\\<\\(VARIABLE\\|DECLARE\\|IN\\|OUT\\|INOUT\\)\\>
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sql'
setlocal filetype=sql
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=qc
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetSQLIndent()
setlocal indentkeys=0),0],!^F,o,O,=~end,=~else,=~elseif,=~elsif,0=~when,0=)
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=sqlcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%{lightline#link()}%#LightlineLeft_inactive_0#%(\ %t\ %)%#LightlineLeft_inactive_0_1#%#LightlineMiddle_inactive#%=%#LightlineRight_inactive_1_2#%#LightlineRight_inactive_1#%(\ %3p%%\ %)%#LightlineRight_inactive_0_1#%#LightlineRight_inactive_0#%(\ %3l:%-2c\ %)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'sql'
setlocal syntax=sql
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 25 - ((13 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 25
normal! 0
wincmd w
argglobal
if bufexists("~/ryayoung/twitter-data/main/sql/reddit-procedures.sql") | buffer ~/ryayoung/twitter-data/main/sql/reddit-procedures.sql | else | edit ~/ryayoung/twitter-data/main/sql/reddit-procedures.sql | endif
balt ~/ryayoung/twitter-data/main/sql/tweet-ids-from-symbol.sql
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <C-C>R :call sqlcomplete#Map("resetCache")
inoremap <buffer> <Left> =sqlcomplete#DrillOutOfColumns()
inoremap <buffer> <Right> =sqlcomplete#DrillIntoTable()
inoremap <buffer> <C-C>L :call sqlcomplete#Map("column_csv")
inoremap <buffer> <C-C>l :call sqlcomplete#Map("column_csv")
inoremap <buffer> <C-C>c :call sqlcomplete#Map("column")
inoremap <buffer> <C-C>v :call sqlcomplete#Map("view")
inoremap <buffer> <C-C>p :call sqlcomplete#Map("procedure")
inoremap <buffer> <C-C>t :call sqlcomplete#Map("table")
inoremap <buffer> <C-C>s :call sqlcomplete#Map("sqlStatement\\w*")
inoremap <buffer> <C-C>T :call sqlcomplete#Map("sqlType\\w*")
inoremap <buffer> <C-C>o :call sqlcomplete#Map("sqlOption\\w*")
inoremap <buffer> <C-C>f :call sqlcomplete#Map("sqlFunction\\w*")
inoremap <buffer> <C-C>k :call sqlcomplete#Map("sqlKeyword\\w*")
inoremap <buffer> <C-C>a :call sqlcomplete#Map("syntax")
xnoremap <buffer> <silent> [" :exec "normal! gv"|call search('\(^\s*\(--\|\/\/\|\*\|\/\*\|\*\/\).*\n\)\(^\s*\(--\|\/\/\|\*\|\/\*\|\*\/\)\)\@!', "W" )
nnoremap <buffer> <silent> [" :call search('\(^\s*\(--\|\/\/\|\*\|\/\*\|\*\/\).*\n\)\(^\s*\(--\|\/\/\|\*\|\/\*\|\*\/\)\)\@!', "W" )
xnoremap <buffer> <silent> [{ ?\c^\s*\(\(create\)\s\+\(or\s\+replace\s\+\)\{,1}\)\{,1}\<\(function\|procedure\|event\|\(existing\|global\s\+temporary\s\+\)\{,1}table\|trigger\|schema\|service\|publication\|database\|datatype\|domain\|index\|subscription\|synchronization\|view\|variable\)\>
nnoremap <buffer> <silent> [{ :call search('\c^\s*\(\(create\)\s\+\(or\s\+replace\s\+\)\{,1}\)\{,1}\<\(function\|procedure\|event\|\(existing\|global\s\+temporary\s\+\)\{,1}table\|trigger\|schema\|service\|publication\|database\|datatype\|domain\|index\|subscription\|synchronization\|view\|variable\)\>', 'bW')
xnoremap <buffer> <silent> [] :exec "normal! gv"|call search('\c^\s*end\W*$', 'bW' )
xnoremap <buffer> <silent> [[ :exec "normal! gv"|call search('\c^\s*begin\>', 'bW' )
nnoremap <buffer> <silent> [] :call search('\c^\s*end\W*$', 'bW' )
nnoremap <buffer> <silent> [[ :call search('\c^\s*begin\>', 'bW' )
xnoremap <buffer> <silent> ]" :exec "normal! gv"|call search('^\(\s*\(--\|\/\/\|\*\|\/\*\|\*\/\).*\n\)\@<!\(\s*\(--\|\/\/\|\*\|\/\*\|\*\/\)\)', "W" )
nnoremap <buffer> <silent> ]" :call search('^\(\s*\(--\|\/\/\|\*\|\/\*\|\*\/\).*\n\)\@<!\(\s*\(--\|\/\/\|\*\|\/\*\|\*\/\)\)', "W" )
xnoremap <buffer> <silent> ]} /\c^\s*\(\(create\)\s\+\(or\s\+replace\s\+\)\{,1}\)\{,1}\<\(function\|procedure\|event\|\(existing\|global\s\+temporary\s\+\)\{,1}table\|trigger\|schema\|service\|publication\|database\|datatype\|domain\|index\|subscription\|synchronization\|view\|variable\)\>
nnoremap <buffer> <silent> ]} :call search('\c^\s*\(\(create\)\s\+\(or\s\+replace\s\+\)\{,1}\)\{,1}\<\(function\|procedure\|event\|\(existing\|global\s\+temporary\s\+\)\{,1}table\|trigger\|schema\|service\|publication\|database\|datatype\|domain\|index\|subscription\|synchronization\|view\|variable\)\>', 'W')
xnoremap <buffer> <silent> ][ :exec "normal! gv"|call search('\c^\s*end\W*$', 'W' )
xnoremap <buffer> <silent> ]] :exec "normal! gv"|call search('\c^\s*begin\>', 'W' )
nnoremap <buffer> <silent> ][ :call search('\c^\s*end\W*$', 'W' )
nnoremap <buffer> <silent> ]] :call search('\c^\s*begin\>', 'W' )
inoremap <buffer> R :call sqlcomplete#Map("resetCache")
inoremap <buffer> L :call sqlcomplete#Map("column_csv")
inoremap <buffer> l :call sqlcomplete#Map("column_csv")
inoremap <buffer> c :call sqlcomplete#Map("column")
inoremap <buffer> v :call sqlcomplete#Map("view")
inoremap <buffer> p :call sqlcomplete#Map("procedure")
inoremap <buffer> t :call sqlcomplete#Map("table")
inoremap <buffer> s :call sqlcomplete#Map("sqlStatement\\w*")
inoremap <buffer> T :call sqlcomplete#Map("sqlType\\w*")
inoremap <buffer> o :call sqlcomplete#Map("sqlOption\\w*")
inoremap <buffer> f :call sqlcomplete#Map("sqlFunction\\w*")
inoremap <buffer> k :call sqlcomplete#Map("sqlKeyword\\w*")
inoremap <buffer> a :call sqlcomplete#Map("syntax")
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,:--,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=\\c\\<\\(VARIABLE\\|DECLARE\\|IN\\|OUT\\|INOUT\\)\\>
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sql'
setlocal filetype=sql
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=qc
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetSQLIndent()
setlocal indentkeys=0),0],!^F,o,O,=~end,=~else,=~elseif,=~elsif,0=~when,0=)
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=sqlcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%{lightline#link()}%#LightlineLeft_inactive_0#%(\ %t\ %)%#LightlineLeft_inactive_0_1#%#LightlineMiddle_inactive#%=%#LightlineRight_inactive_1_2#%#LightlineRight_inactive_1#%(\ %3p%%\ %)%#LightlineRight_inactive_0_1#%#LightlineRight_inactive_0#%(\ %3l:%-2c\ %)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'sql'
setlocal syntax=sql
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists("~/ryayoung/twitter-data/main/sql/build-twitter.sql") | buffer ~/ryayoung/twitter-data/main/sql/build-twitter.sql | else | edit ~/ryayoung/twitter-data/main/sql/build-twitter.sql | endif
balt ~/ryayoung/twitter-data/main/sql/tweet-ids-from-symbol.sql
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <C-C>R :call sqlcomplete#Map("resetCache")
inoremap <buffer> <Left> =sqlcomplete#DrillOutOfColumns()
inoremap <buffer> <Right> =sqlcomplete#DrillIntoTable()
inoremap <buffer> <C-C>L :call sqlcomplete#Map("column_csv")
inoremap <buffer> <C-C>l :call sqlcomplete#Map("column_csv")
inoremap <buffer> <C-C>c :call sqlcomplete#Map("column")
inoremap <buffer> <C-C>v :call sqlcomplete#Map("view")
inoremap <buffer> <C-C>p :call sqlcomplete#Map("procedure")
inoremap <buffer> <C-C>t :call sqlcomplete#Map("table")
inoremap <buffer> <C-C>s :call sqlcomplete#Map("sqlStatement\\w*")
inoremap <buffer> <C-C>T :call sqlcomplete#Map("sqlType\\w*")
inoremap <buffer> <C-C>o :call sqlcomplete#Map("sqlOption\\w*")
inoremap <buffer> <C-C>f :call sqlcomplete#Map("sqlFunction\\w*")
inoremap <buffer> <C-C>k :call sqlcomplete#Map("sqlKeyword\\w*")
inoremap <buffer> <C-C>a :call sqlcomplete#Map("syntax")
xnoremap <buffer> <silent> [" :exec "normal! gv"|call search('\(^\s*\(--\|\/\/\|\*\|\/\*\|\*\/\).*\n\)\(^\s*\(--\|\/\/\|\*\|\/\*\|\*\/\)\)\@!', "W" )
nnoremap <buffer> <silent> [" :call search('\(^\s*\(--\|\/\/\|\*\|\/\*\|\*\/\).*\n\)\(^\s*\(--\|\/\/\|\*\|\/\*\|\*\/\)\)\@!', "W" )
xnoremap <buffer> <silent> [{ ?\c^\s*\(\(create\)\s\+\(or\s\+replace\s\+\)\{,1}\)\{,1}\<\(function\|procedure\|event\|\(existing\|global\s\+temporary\s\+\)\{,1}table\|trigger\|schema\|service\|publication\|database\|datatype\|domain\|index\|subscription\|synchronization\|view\|variable\)\>
nnoremap <buffer> <silent> [{ :call search('\c^\s*\(\(create\)\s\+\(or\s\+replace\s\+\)\{,1}\)\{,1}\<\(function\|procedure\|event\|\(existing\|global\s\+temporary\s\+\)\{,1}table\|trigger\|schema\|service\|publication\|database\|datatype\|domain\|index\|subscription\|synchronization\|view\|variable\)\>', 'bW')
xnoremap <buffer> <silent> [] :exec "normal! gv"|call search('\c^\s*end\W*$', 'bW' )
xnoremap <buffer> <silent> [[ :exec "normal! gv"|call search('\c^\s*begin\>', 'bW' )
nnoremap <buffer> <silent> [] :call search('\c^\s*end\W*$', 'bW' )
nnoremap <buffer> <silent> [[ :call search('\c^\s*begin\>', 'bW' )
xnoremap <buffer> <silent> ]" :exec "normal! gv"|call search('^\(\s*\(--\|\/\/\|\*\|\/\*\|\*\/\).*\n\)\@<!\(\s*\(--\|\/\/\|\*\|\/\*\|\*\/\)\)', "W" )
nnoremap <buffer> <silent> ]" :call search('^\(\s*\(--\|\/\/\|\*\|\/\*\|\*\/\).*\n\)\@<!\(\s*\(--\|\/\/\|\*\|\/\*\|\*\/\)\)', "W" )
xnoremap <buffer> <silent> ]} /\c^\s*\(\(create\)\s\+\(or\s\+replace\s\+\)\{,1}\)\{,1}\<\(function\|procedure\|event\|\(existing\|global\s\+temporary\s\+\)\{,1}table\|trigger\|schema\|service\|publication\|database\|datatype\|domain\|index\|subscription\|synchronization\|view\|variable\)\>
nnoremap <buffer> <silent> ]} :call search('\c^\s*\(\(create\)\s\+\(or\s\+replace\s\+\)\{,1}\)\{,1}\<\(function\|procedure\|event\|\(existing\|global\s\+temporary\s\+\)\{,1}table\|trigger\|schema\|service\|publication\|database\|datatype\|domain\|index\|subscription\|synchronization\|view\|variable\)\>', 'W')
xnoremap <buffer> <silent> ][ :exec "normal! gv"|call search('\c^\s*end\W*$', 'W' )
xnoremap <buffer> <silent> ]] :exec "normal! gv"|call search('\c^\s*begin\>', 'W' )
nnoremap <buffer> <silent> ][ :call search('\c^\s*end\W*$', 'W' )
nnoremap <buffer> <silent> ]] :call search('\c^\s*begin\>', 'W' )
inoremap <buffer> R :call sqlcomplete#Map("resetCache")
inoremap <buffer> L :call sqlcomplete#Map("column_csv")
inoremap <buffer> l :call sqlcomplete#Map("column_csv")
inoremap <buffer> c :call sqlcomplete#Map("column")
inoremap <buffer> v :call sqlcomplete#Map("view")
inoremap <buffer> p :call sqlcomplete#Map("procedure")
inoremap <buffer> t :call sqlcomplete#Map("table")
inoremap <buffer> s :call sqlcomplete#Map("sqlStatement\\w*")
inoremap <buffer> T :call sqlcomplete#Map("sqlType\\w*")
inoremap <buffer> o :call sqlcomplete#Map("sqlOption\\w*")
inoremap <buffer> f :call sqlcomplete#Map("sqlFunction\\w*")
inoremap <buffer> k :call sqlcomplete#Map("sqlKeyword\\w*")
inoremap <buffer> a :call sqlcomplete#Map("syntax")
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,:--,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=\\c\\<\\(VARIABLE\\|DECLARE\\|IN\\|OUT\\|INOUT\\)\\>
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sql'
setlocal filetype=sql
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=qc
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetSQLIndent()
setlocal indentkeys=0),0],!^F,o,O,=~end,=~else,=~elseif,=~elsif,0=~when,0=)
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=sqlcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%{lightline#link()}%#LightlineLeft_inactive_0#%(\ %t\ %)%#LightlineLeft_inactive_0_1#%#LightlineMiddle_inactive#%=%#LightlineRight_inactive_1_2#%#LightlineRight_inactive_1#%(\ %3p%%\ %)%#LightlineRight_inactive_0_1#%#LightlineRight_inactive_0#%(\ %3l:%-2c\ %)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'sql'
setlocal syntax=sql
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 130 - ((38 * winheight(0) + 59) / 118)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 130
normal! 020|
wincmd w
exe '1resize ' . ((&lines * 42 + 60) / 120)
exe 'vert 1resize ' . ((&columns * 147 + 105) / 210)
exe '2resize ' . ((&lines * 34 + 60) / 120)
exe 'vert 2resize ' . ((&columns * 147 + 105) / 210)
exe '3resize ' . ((&lines * 40 + 60) / 120)
exe 'vert 3resize ' . ((&columns * 147 + 105) / 210)
exe 'vert 4resize ' . ((&columns * 67 + 105) / 210)
tabnext 1
set stal=1
badd +35 ~/ryayoung/twitter-data/cloud-function/fx.py
badd +63 ~/ryayoung/twitter-data/main/sql/tweet-ids-from-symbol.sql
badd +1 pull-tweets.py
badd +106 ~/ryayoung/twitter-data/cloud-function/columns.py
badd +0 ~/ryayoung/twitter-data/cloud-function/sql_interface.py
badd +1 ~/ryayoung/twitter-data/main/sql/reddit-procedures.sql
badd +25 ~/ryayoung/twitter-data/main/sql/twitter-procedures.sql
badd +1 ~/ryayoung/twitter-data/main/sql/build-twitter.sql
badd +3 pull-tweets-firestore.py
badd +127 ~/ryayoung/twitter-data/cloud-function/add-list-members.py
badd +47 ~/ryayoung/twitter-data/main/load-company-iex.py
badd +1 ~/ryayoung/twitter-data/main/sql/build-company.sql
badd +38 ~/ryayoung/twitter-data/cloud-function/main.py
badd +164 ~/.vim/vimrc
badd +15 ~/ryayoung/twitter-data/.env
badd +0 to_sql.py
badd +17 ~/ryayoung/twitter-data/main/sql_interface.py
badd +19 sql_interface.py
badd +17 cols.py
badd +96 ~/ryayoung/twitter-data/main/sql/build-twitter-2.sql
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSI
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
