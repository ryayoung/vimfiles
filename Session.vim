let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
cnoremap <silent> <F12> :call AdjustFontSize(1)
inoremap <silent> <F12> :call AdjustFontSize(1)
cnoremap <silent> <F11> :call AdjustFontSize(-1)
inoremap <silent> <F11> :call AdjustFontSize(-1)
inoremap <C-BS> 
map! <S-Insert> *
map  <Plug>(ctrlp)
vmap  "*d
nnoremap  n 'n:call ToggleSmartMarkLocal()
nnoremap  m 'M:call ToggleSmartMarkGlobal()
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
nnoremap  /py :terminal powershell
nnoremap  /cmt :terminal powershell
nnoremap  /pull :terminal powershell
nnoremap <silent>  // :terminal powershell
nnoremap  5 :call ChangeAccent()
nnoremap  3 @q
nnoremap  ` :browse e ~/
vnoremap  co "+y
nnoremap  pa "+p
nnoremap  w 
nnoremap <silent>  T :call ToggleHeader()
nnoremap  A :vnew
nnoremap  a :new
nnoremap  2 :w| :source %
nnoremap  Q :wqa
nnoremap <silent>  q :call QuitIfEmpty()
nnoremap  s :w
vnoremap  c :call CommentMark('<','>')
nnoremap  t :set opfunc=DoCommentOp
nnoremap  .boot :e ~\web-programming\misc\BOOTSTRAP-TEMPLATE.html
nnoremap  .mgmt :cd ~\Onedrive\ -\ University\ of\ Denver\School\Y4Q1\MGMT\ 3000\ Policy\ Strategy
nnoremap  .pm :cd ~\Onedrive\ -\ University\ of\ Denver\School\Y4Q1\INFO\ 3340\ Project\ Management
nnoremap  .www :cd ~\Onedrive\ -\ University\ of\ Denver\School\Y4Q1\COMP\ 3410\ WWW\ Programming
nnoremap  .du :cd ~\Onedrive\ -\ University\ of\ Denver\School\Y4Q1
nnoremap  .plug :cd ~\vimfiles\plugged
nnoremap  .web :cd ~\web-programming
nnoremap  .auto :cd ~\ryayoung\karve-automation
nnoremap  .dw :cd ~\ryayoung\data-warehousing
nnoremap  .ryayoung :cd ~\ryayoung
nnoremap  .cg :cd %:p:h
nnoremap  .cur :lcd %:p:h
nnoremap  ./ :cd 
nnoremap  .. :cd ..
nnoremap  ? s:view ~\vimfiles\CheatSheet.txt
nnoremap  .map :e ~\vimfiles\plugin\map.vim
nnoremap  .set :e ~\vimfiles\plugin\set.vim
nnoremap  .vrc :e $MYVIMRC
nnoremap  .plugin :cd ~\vimfiles\plugin
nnoremap  .ftplugin :cd ~\vimfiles\ftplugin
nnoremap  .vim :cd ~\vimfiles\
nnoremap  .home :cd ~
nnoremap  cn :CtrlP getcwd()
nnoremap  cd :CtrlPMRU C:/
nnoremap    :CtrlPBuffer
nnoremap  1d :set background=dark
nnoremap  1l :set background=light
nnoremap  u :UndotreeShow
nnoremap  cx :vs.| :vertical resize 20
nnoremap  cc :Vex| :vertical resize 20
nnoremap 1k 15k
nnoremap 1j 15j
vnoremap < <gv
vnoremap > >gv
vnoremap J :m '>+1
vnoremap K :m '<-2
vnoremap <silent> T :call ToggleComment()
nnoremap <silent> T :call ToggleComment()
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
nnoremap mN mb:echo "LOCAL MARK 2 SET"
nnoremap mn mn:echo "LOCAL MARK 1 SET"
nnoremap mM mK:echo "GLOBAL MARK 2 SET"
nnoremap mm mM:echo "GLOBAL MARK 1 SET"
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
map <C-P> <Plug>(ctrlp)
nnoremap <silent> <Plug>(ctrlp) :CtrlP
map <silent> <C-ScrollWheelUp> :call AdjustFontSize(1)
map <silent> <C-ScrollWheelDown> :call AdjustFontSize(-1)
onoremap <silent> <F12> :call AdjustFontSize(1)
vnoremap <silent> <F12> :call AdjustFontSize(1)
nnoremap <silent> <F12> :call AdjustFontSize(1)
onoremap <silent> <F11> :call AdjustFontSize(-1)
vnoremap <silent> <F11> :call AdjustFontSize(-1)
nnoremap <silent> <F11> :call AdjustFontSize(-1)
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
vmap <C-X> "*d
vmap <C-Del> "*d
vmap <S-Del> "*d
vmap <C-Insert> "*y
vmap <S-Insert> "-d"*P
nmap <S-Insert> "*P
inoremap <expr> 	 search('\%#[]>")}]', 'n') ? '<Right>' : '	'
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set directory=~/vimfiles/tmp//,.,~\\AppData\\Local\\Temp,c:\\tmp,c:\\temp
set encoding=utf-8
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=Consolas:h9
set guioptions=egt
set helplang=En
set hidden
set ignorecase
set incsearch
set laststatus=2
set runtimepath=~/vimfiles,~\\vimfiles\\plugged\\gruvbox,~\\vimfiles\\plugged\\typescript-vim,~\\vimfiles\\plugged\\ctrlp.vim,~\\vimfiles\\plugged\\undotree,~\\vimfiles\\plugged\\vim-simple-complete,~\\vimfiles\\plugged\\vim-uppercase-sql,~\\vimfiles\\plugged\\vim-repeat,~\\vimfiles\\plugged\\lightline.vim,~\\vimfiles\\plugged\\lightline-gruvbox.vim,~\\vimfiles\\plugged\\emmet-vim,~\\vimfiles\\plugged\\pear-tree,C:\\Program\ Files\ (x86)\\Vim/vimfiles,C:\\Program\ Files\ (x86)\\Vim\\vim82,C:\\Program\ Files\ (x86)\\Vim/vimfiles/after,~\\vimfiles\\plugged\\pear-tree\\after,~/vimfiles/after
set scrolloff=4
set shell=powershell
set shellcmdflag=-command
set shiftwidth=4
set shortmess=filnxtToOSc
set noshowmode
set smartcase
set smartindent
set softtabstop=4
set splitbelow
set splitright
set tabline=%!lightline#tabline()
set tabstop=4
set undodir=~/vimfiles/undodir
set undofile
set window=99
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~\vimfiles
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
argglobal
enew
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
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal completeslash=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != ''
setlocal filetype=
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
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
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
if &syntax != ''
setlocal syntax=
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
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSc
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :