let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
cnoremap <silent> <F12> :call AdjustFontSize(1):call ShowFontSize()
inoremap <silent> <F12> :call AdjustFontSize(1):call ShowFontSize()a
cnoremap <silent> <F11> :call AdjustFontSize(-1):call ShowFontSize()
inoremap <silent> <F11> :call AdjustFontSize(-1):call ShowFontSize()a
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
nnoremap  2 :w| :source %:call OutputFile("SOURCED: ")
nnoremap  Q :wqa
nnoremap <silent>  q :call QuitIfEmpty()
nnoremap  s :w:call OutputFile("WRITTEN: ")
vnoremap  c :call CommentMark('<','>')
nnoremap  t :set opfunc=DoCommentOpg@
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
nnoremap  .# :mks ~/vimfiles/sessions/sesh3.vim
nnoremap  .@ :mks ~/vimfiles/sessions/sesh2.vim
nnoremap  .! :mks ~/vimfiles/sessions/sesh1.vim
nnoremap  .3 :source ~\vimfiles\sessions\sesh3.vim
nnoremap  .2 :source ~\vimfiles\sessions\sesh2.vim
nnoremap  .1 :source ~\vimfiles\sessions\sesh1.vim
nnoremap  .cg :cd %:p:h:call OutputDirName("GLOBAL DIR: ")
nnoremap  .cur :lcd %:p:h:call OutputDirName("LOCAL DIR: ")
nnoremap  ./ :cd 
nnoremap  .. :cd ..:call OutputDirName("BACK TO: ")
nnoremap  ? s:view ~\vimfiles\CheatSheet.txt:call OutputFName("FILE: ")
nnoremap  .map :e ~\vimfiles\plugin\map.vim:call OutputFName("FILE: ")
nnoremap  .set :e ~\vimfiles\plugin\set.vim:call OutputFName("FILE: ")
nnoremap  .vrc :e $MYVIMRC:call OutputFName("FILE: ")
nnoremap  .plugin :cd ~\vimfiles\plugin:call OutputDirName("DIR: ")
nnoremap  .ftplugin :cd ~\vimfiles\ftplugin:call OutputDirName("DIR: ")
nnoremap  .vim :cd ~\vimfiles\:call OutputDirName("DIR: ")
nnoremap  .home :cd ~:call OutputDirName("DIR: ")
nnoremap  cn :CtrlP getcwd()
nnoremap  cd :CtrlPMRU C:/ 
nnoremap    :CtrlPBuffer
nnoremap  1d :set background=dark
nnoremap  1l :set background=light
nnoremap  u :UndotreeShow
nnoremap  cx :vs.| :vertical resize 20jj
nnoremap  cc :Vex| :vertical resize 20jj
nnoremap 1k 15k
nnoremap 1j 15j
vnoremap < <gv
vnoremap > >gv
vnoremap J :m '>+1gv=gv
vnoremap K :m '<-2gv=gv
vnoremap <silent> T :call ToggleComment()gv
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
onoremap <silent> <F12> :call AdjustFontSize(1):call ShowFontSize()
vnoremap <silent> <F12> :call AdjustFontSize(1):call ShowFontSize()
nnoremap <silent> <F12> :call AdjustFontSize(1):call ShowFontSize()
onoremap <silent> <F11> :call AdjustFontSize(-1):call ShowFontSize()
vnoremap <silent> <F11> :call AdjustFontSize(-1):call ShowFontSize()
nnoremap <silent> <F11> :call AdjustFontSize(-1):call ShowFontSize()
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
set shiftwidth=2
set shortmess=filnxtToOSc
set noshowmode
set smartcase
set smartindent
set softtabstop=2
set splitbelow
set splitright
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.snap
set tabline=%!lightline#tabline()
set tabstop=2
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
edit \Users\ryany\web-programming\misc\page-switcher\index.html
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
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
exe '1resize ' . ((&lines * 18 + 29) / 58)
exe '2resize ' . ((&lines * 18 + 29) / 58)
exe '3resize ' . ((&lines * 18 + 29) / 58)
argglobal
balt \Users\ryany\web-programming\misc\page-switcher\style.css
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <C-K>m <Plug>(emmet-merge-lines)
inoremap <buffer> <Plug>(emmet-merge-lines) =emmet#util#closePopup()=emmet#mergeLines()
imap <buffer> <silent> <C-K>A <Plug>(emmet-anchorize-summary)
inoremap <buffer> <Plug>(emmet-anchorize-summary) =emmet#util#closePopup()=emmet#anchorizeURL(1)
imap <buffer> <silent> <C-K>a <Plug>(emmet-anchorize-url)
inoremap <buffer> <Plug>(emmet-anchorize-url) =emmet#util#closePopup()=emmet#anchorizeURL(0)
imap <buffer> <silent> <C-K>k <Plug>(emmet-remove-tag)
inoremap <buffer> <Plug>(emmet-remove-tag) =emmet#util#closePopup()=emmet#removeTag()
imap <buffer> <silent> <C-K>j <Plug>(emmet-split-join-tag)
inoremap <buffer> <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
imap <buffer> <silent> <C-K>/ <Plug>(emmet-toggle-comment)
inoremap <buffer> <Plug>(emmet-toggle-comment) =emmet#util#closePopup()=emmet#toggleComment()
imap <buffer> <silent> <C-K>I <Plug>(emmet-image-encode)
inoremap <buffer> <Plug>(emmet-image-encode) =emmet#util#closePopup()=emmet#imageEncode()
imap <buffer> <silent> <C-K>i <Plug>(emmet-image-size)
inoremap <buffer> <Plug>(emmet-image-size) =emmet#util#closePopup()=emmet#imageSize()
inoremap <buffer> <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
inoremap <buffer> <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
imap <buffer> <silent> <C-K>N <Plug>(emmet-move-prev)
inoremap <buffer> <Plug>(emmet-move-prev) =emmet#util#closePopup()=emmet#moveNextPrev(1)
imap <buffer> <silent> <C-K>n <Plug>(emmet-move-next)
inoremap <buffer> <Plug>(emmet-move-next) =emmet#util#closePopup()=emmet#moveNextPrev(0)
imap <buffer> <silent> <C-K>D <Plug>(emmet-balance-tag-outword)
inoremap <buffer> <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
imap <buffer> <silent> <C-K>d <Plug>(emmet-balance-tag-inward)
inoremap <buffer> <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
imap <buffer> <silent> <C-K>u <Plug>(emmet-update-tag)
inoremap <buffer> <Plug>(emmet-update-tag) =emmet#util#closePopup()=emmet#updateTag()
imap <buffer> <silent> <C-K>; <Plug>(emmet-expand-word)
inoremap <buffer> <Plug>(emmet-expand-word) =emmet#util#closePopup()=emmet#expandAbbr(1,"")
imap <buffer> <silent> <C-K>, <Plug>(emmet-expand-abbr)
inoremap <buffer> <Plug>(emmet-expand-abbr) =emmet#util#closePopup()=emmet#expandAbbr(0,"")
vmap <buffer> <silent> c <Plug>(emmet-code-pretty)
nmap <buffer> <silent> m <Plug>(emmet-merge-lines)
nmap <buffer> <silent> A <Plug>(emmet-anchorize-summary)
nmap <buffer> <silent> a <Plug>(emmet-anchorize-url)
nmap <buffer> <silent> k <Plug>(emmet-remove-tag)
nmap <buffer> <silent> j <Plug>(emmet-split-join-tag)
nmap <buffer> <silent> / <Plug>(emmet-toggle-comment)
nmap <buffer> <silent> I <Plug>(emmet-image-encode)
nmap <buffer> <silent> i <Plug>(emmet-image-size)
nmap <buffer> <silent> N <Plug>(emmet-move-prev)
nmap <buffer> <silent> n <Plug>(emmet-move-next)
vmap <buffer> <silent> D <Plug>(emmet-balance-tag-outword)
nmap <buffer> <silent> D <Plug>(emmet-balance-tag-outword)
vmap <buffer> <silent> d <Plug>(emmet-balance-tag-inward)
nmap <buffer> <silent> d <Plug>(emmet-balance-tag-inward)
nmap <buffer> <silent> u <Plug>(emmet-update-tag)
nmap <buffer> <silent> ; <Plug>(emmet-expand-word)
vmap <buffer> <silent> , <Plug>(emmet-expand-abbr)
nmap <buffer> <silent> , <Plug>(emmet-expand-abbr)
nnoremap <buffer>  ,d2 i`lvf>dhf<vf>dF`x
nnoremap <buffer>  ,d1 vf>d
nnoremap <buffer> <silent>  ,j :call InsertJQueryScript()
nnoremap <buffer> <silent>  ,, :call InsertTemplateFull()
vmap <buffer> <silent> <C-K>c <Plug>(emmet-code-pretty)
vnoremap <buffer> <Plug>(emmet-code-pretty) :call emmet#codePretty()
nmap <buffer> <silent> <C-K>m <Plug>(emmet-merge-lines)
nnoremap <buffer> <Plug>(emmet-merge-lines) :call emmet#mergeLines()
nmap <buffer> <silent> <C-K>A <Plug>(emmet-anchorize-summary)
nnoremap <buffer> <Plug>(emmet-anchorize-summary) :call emmet#anchorizeURL(1)
nmap <buffer> <silent> <C-K>a <Plug>(emmet-anchorize-url)
nnoremap <buffer> <Plug>(emmet-anchorize-url) :call emmet#anchorizeURL(0)
nmap <buffer> <silent> <C-K>k <Plug>(emmet-remove-tag)
nnoremap <buffer> <Plug>(emmet-remove-tag) :call emmet#removeTag()
nmap <buffer> <silent> <C-K>j <Plug>(emmet-split-join-tag)
nnoremap <buffer> <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
nmap <buffer> <silent> <C-K>/ <Plug>(emmet-toggle-comment)
nnoremap <buffer> <Plug>(emmet-toggle-comment) :call emmet#toggleComment()
nmap <buffer> <silent> <C-K>I <Plug>(emmet-image-encode)
nnoremap <buffer> <Plug>(emmet-image-encode) :call emmet#imageEncode()
nmap <buffer> <silent> <C-K>i <Plug>(emmet-image-size)
nnoremap <buffer> <Plug>(emmet-image-size) :call emmet#imageSize()
nnoremap <buffer> <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
nnoremap <buffer> <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
nmap <buffer> <silent> <C-K>N <Plug>(emmet-move-prev)
nnoremap <buffer> <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
nmap <buffer> <silent> <C-K>n <Plug>(emmet-move-next)
nnoremap <buffer> <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
vmap <buffer> <silent> <C-K>D <Plug>(emmet-balance-tag-outword)
vnoremap <buffer> <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
nmap <buffer> <silent> <C-K>D <Plug>(emmet-balance-tag-outword)
nnoremap <buffer> <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
vmap <buffer> <silent> <C-K>d <Plug>(emmet-balance-tag-inward)
vnoremap <buffer> <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nmap <buffer> <silent> <C-K>d <Plug>(emmet-balance-tag-inward)
nnoremap <buffer> <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nmap <buffer> <silent> <C-K>u <Plug>(emmet-update-tag)
nnoremap <buffer> <Plug>(emmet-update-tag) :call emmet#updateTag()
nmap <buffer> <silent> <C-K>; <Plug>(emmet-expand-word)
nnoremap <buffer> <Plug>(emmet-expand-word) :call emmet#expandAbbr(1,"")
vmap <buffer> <silent> <C-K>, <Plug>(emmet-expand-abbr)
vnoremap <buffer> <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(2,"")
nmap <buffer> <silent> <C-K>, <Plug>(emmet-expand-abbr)
nnoremap <buffer> <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(3,"")
imap <buffer> <silent> m <Plug>(emmet-merge-lines)
imap <buffer> <silent> A <Plug>(emmet-anchorize-summary)
imap <buffer> <silent> a <Plug>(emmet-anchorize-url)
imap <buffer> <silent> k <Plug>(emmet-remove-tag)
imap <buffer> <silent> j <Plug>(emmet-split-join-tag)
imap <buffer> <silent> / <Plug>(emmet-toggle-comment)
imap <buffer> <silent> I <Plug>(emmet-image-encode)
imap <buffer> <silent> i <Plug>(emmet-image-size)
imap <buffer> <silent> N <Plug>(emmet-move-prev)
imap <buffer> <silent> n <Plug>(emmet-move-next)
imap <buffer> <silent> D <Plug>(emmet-balance-tag-outword)
imap <buffer> <silent> d <Plug>(emmet-balance-tag-inward)
imap <buffer> <silent> u <Plug>(emmet-update-tag)
imap <buffer> <silent> ; <Plug>(emmet-expand-word)
imap <buffer> <silent> , <Plug>(emmet-expand-abbr)
iabbr <buffer> <em> <em></em><Left><Left><Left><Left><Left>
iabbr <buffer> <!-- <!-- --><Left><Left><Left><Left>
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
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
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
if &filetype != 'html'
setlocal filetype=html
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
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
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
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
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
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%{lightline#link()}%#LightlineLeft_inactive_0#%(\ %t\ %)%#LightlineLeft_inactive_0_1#%#LightlineMiddle_inactive#%=%#LightlineRight_inactive_1_2#%#LightlineRight_inactive_1#%(\ %3p%%\ %)%#LightlineRight_inactive_0_1#%#LightlineRight_inactive_0#%(\ %3l:%-2c\ %)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'html'
setlocal syntax=html
endif
setlocal tabstop=2
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
silent! normal! zE
let &fdl = &fdl
let s:l = 7 - ((2 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 019|
wincmd w
argglobal
if bufexists("\Users\ryany\web-programming\misc\page-switcher\script.js") | buffer \Users\ryany\web-programming\misc\page-switcher\script.js | else | edit \Users\ryany\web-programming\misc\page-switcher\script.js | endif
balt \Users\ryany\web-programming\misc\page-switcher\script.js
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
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
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
setlocal define=\\(^\\s*(*async\\s\\+function\\|(*function\\)\\|^\\s*\\(\\*\\|static\\|async\\|get\\|set\\|\\i\\+\\.\\)\\|^\\s*\\(\\ze\\i\\+\\)\\(([^)]*).*{$\\|\\s*[:=,]\\)\\|^\\s*\\(export\\s\\+\\|export\\s\\+default\\s\\+\\)*\\(var\\|let\\|const\\|function\\|class\\)\\|\\<as\\>
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
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
setlocal indentexpr=GetJavascriptIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,0],0)
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
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=.,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%{lightline#link()}%#LightlineLeft_inactive_0#%(\ %t\ %)%#LightlineLeft_inactive_0_1#%#LightlineMiddle_inactive#%=%#LightlineRight_inactive_1_2#%#LightlineRight_inactive_1#%(\ %3p%%\ %)%#LightlineRight_inactive_0_1#%#LightlineRight_inactive_0#%(\ %3l:%-2c\ %)
setlocal suffixesadd=.js,.jsx,.es,.es6,.cjs,.mjs,.jsm,.vue,.json
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
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
silent! normal! zE
let &fdl = &fdl
let s:l = 22 - ((13 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 22
normal! 026|
wincmd w
argglobal
if bufexists("\Users\ryany\web-programming\misc\page-switcher\style.css") | buffer \Users\ryany\web-programming\misc\page-switcher\style.css | else | edit \Users\ryany\web-programming\misc\page-switcher\style.css | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <C-K>m <Plug>(emmet-merge-lines)
inoremap <buffer> <Plug>(emmet-merge-lines) =emmet#util#closePopup()=emmet#mergeLines()
imap <buffer> <silent> <C-K>A <Plug>(emmet-anchorize-summary)
inoremap <buffer> <Plug>(emmet-anchorize-summary) =emmet#util#closePopup()=emmet#anchorizeURL(1)
imap <buffer> <silent> <C-K>a <Plug>(emmet-anchorize-url)
inoremap <buffer> <Plug>(emmet-anchorize-url) =emmet#util#closePopup()=emmet#anchorizeURL(0)
imap <buffer> <silent> <C-K>k <Plug>(emmet-remove-tag)
inoremap <buffer> <Plug>(emmet-remove-tag) =emmet#util#closePopup()=emmet#removeTag()
imap <buffer> <silent> <C-K>j <Plug>(emmet-split-join-tag)
inoremap <buffer> <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
imap <buffer> <silent> <C-K>/ <Plug>(emmet-toggle-comment)
inoremap <buffer> <Plug>(emmet-toggle-comment) =emmet#util#closePopup()=emmet#toggleComment()
imap <buffer> <silent> <C-K>I <Plug>(emmet-image-encode)
inoremap <buffer> <Plug>(emmet-image-encode) =emmet#util#closePopup()=emmet#imageEncode()
imap <buffer> <silent> <C-K>i <Plug>(emmet-image-size)
inoremap <buffer> <Plug>(emmet-image-size) =emmet#util#closePopup()=emmet#imageSize()
inoremap <buffer> <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
inoremap <buffer> <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
imap <buffer> <silent> <C-K>N <Plug>(emmet-move-prev)
inoremap <buffer> <Plug>(emmet-move-prev) =emmet#util#closePopup()=emmet#moveNextPrev(1)
imap <buffer> <silent> <C-K>n <Plug>(emmet-move-next)
inoremap <buffer> <Plug>(emmet-move-next) =emmet#util#closePopup()=emmet#moveNextPrev(0)
imap <buffer> <silent> <C-K>D <Plug>(emmet-balance-tag-outword)
inoremap <buffer> <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
imap <buffer> <silent> <C-K>d <Plug>(emmet-balance-tag-inward)
inoremap <buffer> <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
imap <buffer> <silent> <C-K>u <Plug>(emmet-update-tag)
inoremap <buffer> <Plug>(emmet-update-tag) =emmet#util#closePopup()=emmet#updateTag()
imap <buffer> <silent> <C-K>; <Plug>(emmet-expand-word)
inoremap <buffer> <Plug>(emmet-expand-word) =emmet#util#closePopup()=emmet#expandAbbr(1,"")
imap <buffer> <silent> <C-K>, <Plug>(emmet-expand-abbr)
inoremap <buffer> <Plug>(emmet-expand-abbr) =emmet#util#closePopup()=emmet#expandAbbr(0,"")
vmap <buffer> <silent> c <Plug>(emmet-code-pretty)
nmap <buffer> <silent> m <Plug>(emmet-merge-lines)
nmap <buffer> <silent> A <Plug>(emmet-anchorize-summary)
nmap <buffer> <silent> a <Plug>(emmet-anchorize-url)
nmap <buffer> <silent> k <Plug>(emmet-remove-tag)
nmap <buffer> <silent> j <Plug>(emmet-split-join-tag)
nmap <buffer> <silent> / <Plug>(emmet-toggle-comment)
nmap <buffer> <silent> I <Plug>(emmet-image-encode)
nmap <buffer> <silent> i <Plug>(emmet-image-size)
nmap <buffer> <silent> N <Plug>(emmet-move-prev)
nmap <buffer> <silent> n <Plug>(emmet-move-next)
vmap <buffer> <silent> D <Plug>(emmet-balance-tag-outword)
nmap <buffer> <silent> D <Plug>(emmet-balance-tag-outword)
vmap <buffer> <silent> d <Plug>(emmet-balance-tag-inward)
nmap <buffer> <silent> d <Plug>(emmet-balance-tag-inward)
nmap <buffer> <silent> u <Plug>(emmet-update-tag)
nmap <buffer> <silent> ; <Plug>(emmet-expand-word)
vmap <buffer> <silent> , <Plug>(emmet-expand-abbr)
nmap <buffer> <silent> , <Plug>(emmet-expand-abbr)
vmap <buffer> <silent> <C-K>c <Plug>(emmet-code-pretty)
vnoremap <buffer> <Plug>(emmet-code-pretty) :call emmet#codePretty()
nmap <buffer> <silent> <C-K>m <Plug>(emmet-merge-lines)
nnoremap <buffer> <Plug>(emmet-merge-lines) :call emmet#mergeLines()
nmap <buffer> <silent> <C-K>A <Plug>(emmet-anchorize-summary)
nnoremap <buffer> <Plug>(emmet-anchorize-summary) :call emmet#anchorizeURL(1)
nmap <buffer> <silent> <C-K>a <Plug>(emmet-anchorize-url)
nnoremap <buffer> <Plug>(emmet-anchorize-url) :call emmet#anchorizeURL(0)
nmap <buffer> <silent> <C-K>k <Plug>(emmet-remove-tag)
nnoremap <buffer> <Plug>(emmet-remove-tag) :call emmet#removeTag()
nmap <buffer> <silent> <C-K>j <Plug>(emmet-split-join-tag)
nnoremap <buffer> <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
nmap <buffer> <silent> <C-K>/ <Plug>(emmet-toggle-comment)
nnoremap <buffer> <Plug>(emmet-toggle-comment) :call emmet#toggleComment()
nmap <buffer> <silent> <C-K>I <Plug>(emmet-image-encode)
nnoremap <buffer> <Plug>(emmet-image-encode) :call emmet#imageEncode()
nmap <buffer> <silent> <C-K>i <Plug>(emmet-image-size)
nnoremap <buffer> <Plug>(emmet-image-size) :call emmet#imageSize()
nnoremap <buffer> <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
nnoremap <buffer> <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
nmap <buffer> <silent> <C-K>N <Plug>(emmet-move-prev)
nnoremap <buffer> <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
nmap <buffer> <silent> <C-K>n <Plug>(emmet-move-next)
nnoremap <buffer> <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
vmap <buffer> <silent> <C-K>D <Plug>(emmet-balance-tag-outword)
vnoremap <buffer> <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
nmap <buffer> <silent> <C-K>D <Plug>(emmet-balance-tag-outword)
nnoremap <buffer> <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
vmap <buffer> <silent> <C-K>d <Plug>(emmet-balance-tag-inward)
vnoremap <buffer> <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nmap <buffer> <silent> <C-K>d <Plug>(emmet-balance-tag-inward)
nnoremap <buffer> <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nmap <buffer> <silent> <C-K>u <Plug>(emmet-update-tag)
nnoremap <buffer> <Plug>(emmet-update-tag) :call emmet#updateTag()
nmap <buffer> <silent> <C-K>; <Plug>(emmet-expand-word)
nnoremap <buffer> <Plug>(emmet-expand-word) :call emmet#expandAbbr(1,"")
vmap <buffer> <silent> <C-K>, <Plug>(emmet-expand-abbr)
vnoremap <buffer> <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(2,"")
nmap <buffer> <silent> <C-K>, <Plug>(emmet-expand-abbr)
nnoremap <buffer> <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(3,"")
imap <buffer> <silent> m <Plug>(emmet-merge-lines)
imap <buffer> <silent> A <Plug>(emmet-anchorize-summary)
imap <buffer> <silent> a <Plug>(emmet-anchorize-url)
imap <buffer> <silent> k <Plug>(emmet-remove-tag)
imap <buffer> <silent> j <Plug>(emmet-split-join-tag)
imap <buffer> <silent> / <Plug>(emmet-toggle-comment)
imap <buffer> <silent> I <Plug>(emmet-image-encode)
imap <buffer> <silent> i <Plug>(emmet-image-size)
imap <buffer> <silent> N <Plug>(emmet-move-prev)
imap <buffer> <silent> n <Plug>(emmet-move-next)
imap <buffer> <silent> D <Plug>(emmet-balance-tag-outword)
imap <buffer> <silent> d <Plug>(emmet-balance-tag-inward)
imap <buffer> <silent> u <Plug>(emmet-update-tag)
imap <buffer> <silent> ; <Plug>(emmet-expand-word)
imap <buffer> <silent> , <Plug>(emmet-expand-abbr)
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
setlocal comments=s1:/*,mb:*,ex:*/
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
if &filetype != 'css'
setlocal filetype=css
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
setlocal include=^\\s*@import\\s\\+\\%(url(\\)\\=
setlocal includeexpr=
setlocal indentexpr=GetCSSIndent()
setlocal indentkeys=0{,0},!^F,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-
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
setlocal omnifunc=csscomplete#CompleteCSS
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
setlocal nosmartindent
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
if &syntax != 'css'
setlocal syntax=css
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
silent! normal! zE
let &fdl = &fdl
let s:l = 78 - ((8 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 78
normal! 0
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 18 + 29) / 58)
exe '2resize ' . ((&lines * 18 + 29) / 58)
exe '3resize ' . ((&lines * 18 + 29) / 58)
tabnext 1
badd +78 \Users\ryany\web-programming\misc\page-switcher\style.css
badd +0 \Users\ryany\web-programming\misc\page-switcher\index.html
badd +0 \Users\ryany\web-programming\misc\page-switcher\script.js
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSc
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
