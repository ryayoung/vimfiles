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
nnoremap  2 :w| :source %:call OutputFile("SOURCED: ")
nnoremap <silent>  Q :call SaveWorkspaceAndQuitAll()
nnoremap <silent>  q :call QuitIfEmpty()
nnoremap  s :w:call OutputFile("WRITTEN: ")
nnoremap  .boot :e ~\web-programming\misc\BOOTSTRAP-TEMPLATE.html
nnoremap  .doc :cd ~\Onedrive\ -\ University\ of\ Denver\Docs
nnoremap  .du :cd ~\Onedrive\ -\ University\ of\ Denver\School\Y4Q1
nnoremap  .web :cd ~\web-programming-2
nnoremap  .lit :source ~\vimfiles\sessions\literature.vim
nnoremap  .py :cd ~\Documents\python
nnoremap  .auto :cd ~\ryayoung\karve-sample-database
nnoremap  .ryayoung :cd ~\ryayoung
nnoremap  .# :mks! ~/.vim/sessions/sesh3.vim
nnoremap  .@ :mks! ~/.vim/sessions/sesh2.vim
nnoremap  .! :mks! ~/.vim/sessions/sesh1.vim
nnoremap  .3 :source ~\.vim\sessions\sesh3.vim
nnoremap  .2 :source ~\.vim\sessions\sesh2.vim
nnoremap  .1 :source ~\.vim\sessions\sesh1.vim
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
nnoremap  .ry :cd ~/ryany:call OutputDirName("DIR: ")
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
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
noremap <M-Down> }
noremap <D-Down> <C-End>
noremap <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
nnoremap <silent> <Plug>SurroundRepeat .
map <C-P> <Plug>(ctrlp)
nnoremap <silent> <Plug>(ctrlp) :CtrlP
nnoremap <C-K> 
nnoremap <C-J> 
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <expr> 	 search('\%#[]>")}]', 'n') ? '<Right>' : '	'
imap  <Plug>Isurround
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set directory=~/.vim/tmp//,.,~/tmp,/var/tmp,/tmp
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=agave\ Nerd\ Font:h14
set guioptions=eg
set guitablabel=%M%t
set helplang=en
set hidden
set ignorecase
set incsearch
set laststatus=2
set mouse=a
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set runtimepath=~/.vim,~/.vim/plugged/gruvbox,~/.vim/plugged/typescript-vim,~/.vim/plugged/ctrlp.vim,~/.vim/plugged/undotree,~/.vim/plugged/vim-simple-complete,~/.vim/plugged/vim-uppercase-sql,~/.vim/plugged/vim-repeat,~/.vim/plugged/lightline.vim,~/.vim/plugged/lightline-gruvbox.vim,~/.vim/plugged/emmet-vim,~/.vim/plugged/pear-tree,~/.vim/plugged/vim-surround,/usr/local/Cellar/macvim/8.2-171_1/MacVim.app/Contents/Resources/vim/vimfiles,/usr/local/Cellar/macvim/8.2-171_1/MacVim.app/Contents/Resources/vim/runtime,/usr/local/Cellar/macvim/8.2-171_1/MacVim.app/Contents/Resources/vim/vimfiles/after,~/.vim/plugged/pear-tree/after,~/.vim/after
set scrolloff=4
set shiftwidth=4
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
set window=61
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
edit ~/.vim/vimrc
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt ~/.vim/vimrc
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*end\(f\%[unction]\|def\)\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*end\(f\%[unction]\|def\)\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*\(fu\%[nction]\|def\)\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*\(fu\%[nction]\|def\)\>', "bW")
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*end\(f\%[unction]\|def\)\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*end\(f\%[unction]\|def\)\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*\(fu\%[nction]\|def\)\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*\(fu\%[nction]\|def\)\>', "W")
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
setlocal comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
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
set cursorlineopt=number
setlocal cursorlineopt=number
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
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
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},0),0],:,!^F,o,O,e,=end,=},=else,=cat,=finall,=END,0\\,0=\"\\\ 
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
setlocal keywordprg=:help
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
setlocal omnifunc=
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
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=78
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 143 - ((29 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 143
normal! 034|
tabnext 1
badd +0 ~/.vim/vimrc
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
