" Maintainer:     Ryan Young
" Last Modified:  Nov 30, 2021

" Main configuration file for vim. Many more commands can be found in sets.vim
" and maps.vim inside the plugin folder.

syntax on "Enables syntax highlighting. Very important
filetype on
filetype plugin on "Tells vim to run files in /ftplugin when the filetype in current window changes.
filetype indent on

" Tells Vim to place all your swap files there, so your working directory stays clean.
" For this to work, you must create a /tmp folder inside vimfiles.
set directory^=$HOME/vimfiles/tmp//

" SET CWD:--------------------------------------------------------------------
" Working directory will be set as soon as you enter vim
" NOTE - if you use terminal vim EVER, please remove this line.
autocmd VimEnter * if getcwd() == "C:\\Users\\ryany" | cd vimfiles | endif

" SET LEADER KEY:-------------------------------------------------------------
let mapleader = " "

" LINE NUMBERING:-------------------------------------------------------------
set number "enable line numbering
augroup numbertoggle "Number mode changes between insert and normal mode
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

" OPEN FILE IN LAST KNOWN CURSOR POSITION:------------------------------------
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif


"PLUG:------------------------------------------------------------------------
call plug#begin('~/vimfiles/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'leafgarland/typescript-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'maxboisvert/vim-simple-complete'
Plug 'jsborjesson/vim-uppercase-sql'
Plug 'tpope/vim-repeat'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'mattn/emmet-vim'
Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-commentary'
" Plug 'ryayoung/vim-comments-and-headers'
call plug#end()


" NETRW:----------------------------------------------------------------------
let g:netrw_banner=0
" :Vex - Explore files in dir of current file
nnoremap <leader>cc :Vex<bar> :vertical resize 20<CR>jj
" :vs. - Explore files in working directory
nnoremap <leader>cx :vs.<bar> :vertical resize 20<CR>jj
let g:netrw_altv = 1 "When opening file from explorer by pressing v, it opens to the right instead of left

" UNDOTREE:-------------------------------------------------------------------
" Show undo history
nnoremap <leader>u :UndotreeShow<CR>

" SIMPLE COMPLETE:------------------------------------------------------------
let g:loaded_vim_simple_complete = 0

" GRUVBOX:--------------------------------------------------------------------
colorscheme gruvbox
let g:gruvbox_contrast_light='soft'
let g:gruvbox_contrast_dark='soft'
" Sets background based on hour of the day in military time. Adjust this number
" to change when it gets dark.
if strftime('%H') > 17 || strftime('%H') < 5
    set background=dark
else
    " set background=light
    set background=dark
endif
" Change background between light and dark modes
nnoremap <Leader>1l :set background=light<CR>
nnoremap <Leader>1d :set background=dark<CR>

" CTRLP:----------------------------------------------------------------------
" Window will display 15 files and load 100. [Results] attr should be as high
" as possible without experiencing a slow-down
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:150' 
" Default to searching by filename only instead of path"
let g:ctrlp_by_filename = 1 
" Select buffered files (files that have been open at one point in current session)
nnoremap <Leader><Leader> :CtrlPBuffer<CR>
" Select recently used files
nnoremap <Leader>cd :CtrlPMRU C:/<CR> 
" Open file finder in current working directory
nnoremap <Leader>cn :CtrlP getcwd()<CR>

" EMMET:----------------------------------------------------------------------
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-l>'
 
" LIGHTLINE:------------------------------------------------------------------
let g:lightline = {}
let g:lightline = {'colorscheme': 'gruvbox'}
set laststatus=2 "Needed to display lightline"
set noshowmode "Mode is already displayed by lightline, so we can hide it"

" VIM COMMENTS AND HEADERS: --------------------------------------------------
" Your name goes here:
let g:my_name = "Ryan Young"

" PERSONAL PLUGINS: ----------------------------------------------------------
let g:change_accent_enabled = 0

" QUICK ACCESS FOR EVERYONE:--------------------------------------------------
" Directories (change global working directory)
nnoremap <Leader>.home :cd ~<CR>:call OutputDirName("DIR: ")<CR>
nnoremap <Leader>.vim :cd ~\vimfiles\<CR>:call OutputDirName("DIR: ")<CR>
nnoremap <Leader>.ftplugin :cd ~\vimfiles\ftplugin<CR>:call OutputDirName("DIR: ")<CR>
nnoremap <Leader>.plugin :cd ~\vimfiles\plugin<CR>:call OutputDirName("DIR: ")<CR>
" Files (open in current window)
nnoremap <Leader>.vrc :e $MYVIMRC<CR>:call OutputFName("FILE: ")<CR>
nnoremap <Leader>.set :e ~\vimfiles\plugin\set.vim<CR>:call OutputFName("FILE: ")<CR>
nnoremap <Leader>.map :e ~\vimfiles\plugin\map.vim<CR>:call OutputFName("FILE: ")<CR>
" Open cheat sheet readonly in new horizontal split, instead of current window
nnoremap <Leader>? <C-w>s:view ~\vimfiles\CheatSheet.txt<CR>:call OutputFName("FILE: ")<CR>
" Back 1 directory
nnoremap <Leader>.. :cd ..<CR>:call OutputDirName("BACK TO: ")<CR>
" Forward to <let user enter dir>
nnoremap <Leader>./ :cd<Space>
" Change LOCAL working directory to current file
nnoremap <Leader>.cur :lcd %:p:h<CR>:call OutputDirName("LOCAL DIR: ")<CR>
" Change GLOBAL working directory to current file
nnoremap <Leader>.cg :cd %:p:h<CR>:call OutputDirName("GLOBAL DIR: ")<CR>
" SESSIONS:
" Open Sessions
nnoremap <leader>.1 :source ~\vimfiles\sessions\sesh1.vim<CR>
nnoremap <leader>.2 :source ~\vimfiles\sessions\sesh2.vim<CR>
nnoremap <leader>.3 :source ~\vimfiles\sessions\sesh3.vim<CR>
" Save Sessions
nnoremap <leader>.! :mks! ~/vimfiles/sessions/sesh1.vim<CR>
nnoremap <leader>.@ :mks! ~/vimfiles/sessions/sesh2.vim<CR>
nnoremap <leader>.# :mks! ~/vimfiles/sessions/sesh3.vim<CR>

" Get ready to open session 1 by entering the source string into command line
au VimEnter * call feedkeys(escape(":source ~/vimfiles/sessions/sesh1.vim", '\'))
" For file explorer, delete buffer as soon as its hidden
au FileType netrw setl bufhidden=delete
" If there is no filetype, delete buffer as soon as its hidden
au BufNewFile,BufRead * if empty(&filetype) | set filetype=none | setl bufhidden=delete | endif

" PERSONAL QUICK ACCESS: (Delete these! Make your own!)-----------------------
" Directories
nnoremap <Leader>.ryayoung :cd ~\ryayoung<CR>
nnoremap <Leader>.auto :cd ~\ryayoung\karve-sample-database<CR>
nnoremap <Leader>.py :cd ~\Documents\python<CR>
nnoremap <leader>.lit :source ~\vimfiles\sessions\literature.vim<CR>
nnoremap <Leader>.web :cd ~\web-programming-2<CR>
nnoremap <Leader>.du :cd ~\Onedrive\ -\ University\ of\ Denver\School\Y4Q1<CR>
" Files
nnoremap <Leader>.boot :e ~\web-programming\misc\BOOTSTRAP-TEMPLATE.html<CR>

" FUNCTION FOR QUICK ACCESS:--------------------------------------------------
fun! OutputDirName(message)
    execute 'echom a:message . split(getcwd(),"\\")[-2] . "\\" . split(getcwd(),"\\")[-1]'
endfun
fun! OutputFName(message)
    execute 'echom a:message . split(getcwd(),"\\")[-2] . "\\" . expand("%:t")'
endfun

" NOT USED:-------------------------------------------------------------------
" Not sure what these do, so I'll comment them out for now
" let g:gruvbox_number_column='bg0'
" let g:netrw_browse_split=2
" let g:netrw_winsize = 25
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] 
" let g:ctrlp_open_new_file = 't'
" let g:ctrlp_working_path_mode = 'rw'

" Enable this line to disable the noerrmsg plugin and show errors again:
let g:loaded_noerrmsg = 0

" FUNCTIONS:------------------------------------------------------------------
fun! AnyBuffersModified()
    let l:numModified = 0
    let l:numUnnamedModified = 0
    for i in range(1, bufnr('$'))
        let l:numModified = l:numModified + getbufvar(i, "&mod")
        if getbufvar(i, "&mod") == 1 
            if bufname(i) == ""
                let l:numUnnamedModified = l:numUnnamedModified + 1
            else
                echom bufname(i)
            endif
        endif
    endfor
    if l:numUnnamedModified > 0
        echom "Unnamed buffer(s) modified: (" . l:numUnnamedModified . ")"
    endif
    if l:numModified > 0
        return 1
    else
        return 0
    endif
endfun

" Do not display completion messages
" Patch: https://groups.google.com/forum/#!topic/vim_dev/WeBBjkXE8H8
" try
  " set shortmess+=c
" catch /^Vim\%((\a\+)\)\=:E539: Illegal character/
  " autocmd MyAutoCmd VimEnter *
        " \ highlight ModeMsg guifg=bg guibg=bg |
        " \ highlight Question guifg=bg guibg=bg
" endtry


