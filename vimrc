" Author: Ryan Young
" Last modified: 10-31-21

"Main configuration file for vim. Many more commands can be found in sets.vim
"and maps.vim inside the plugin folder.
syntax on "Enables syntax highlighting. Very important
filetype on
filetype plugin on "Tells vim to run files in /ftplugin when the filetype in current window changes.
filetype indent on

"Tells Vim to place all your swap files there, so your working directory stays clean.
"For this to work, you must create a /tmp folder inside vimfiles.
set directory^=$HOME/vimfiles/tmp// 

"Your name goes here:
let name = "Ryan Young"

"SET LEADER KEY:---------------------------------------------------
let mapleader = " "

"PLUG:-------------------------------------------------------------
call plug#begin('~/vimfiles/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'leafgarland/typescript-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'maxboisvert/vim-simple-complete'
Plug 'jsborjesson/vim-uppercase-sql'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'mattn/emmet-vim'
Plug 'tmsvg/pear-tree'
call plug#end()

"LINE NUMBERING:---------------------------------------------------
set number "enable line numbering
augroup numbertoggle "Number mode changes between insert and normal mode
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

"NETRW:------------------------------------------------------------
let g:netrw_banner=0
":Vex - Explore files in dir of current file
nnoremap <leader>cc :Vex<bar> :vertical resize 20<CR>jj
":vs. - Explore files in working directory
nnoremap <leader>cx :vs.<bar> :vertical resize 20<CR>jj
let g:netrw_altv = 1 "When opening file from explorer by pressing v, it opens to the right instead of left

"UNDOTREE:---------------------------------------------------------
"Show undo history
nnoremap <leader>u :UndotreeShow<CR>

"GRUVBOX:----------------------------------------------------------
colorscheme gruvbox
let g:gruvbox_contrast_light='soft'
let g:gruvbox_contrast_dark='soft'
"Sets background based on hour of the day in military time. Adjust this number
"to change when it gets dark.
if strftime('%H') > 20 || strftime('%H') < 5
    set background=dark
else
    set background=light
endif
"Change background between light and dark modes
nnoremap <Leader>1l :set background=light<CR>
nnoremap <Leader>1d :set background=dark<CR>

"CTRLP:------------------------------------------------------------
"note: I use CtrlP ONLY for recently used files

"Window will display 15 files and load 100. [Results] attr should be as high
"as possible without experiencing a slow-down
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:150' 
"Default to searching by filename only instead of path"
let g:ctrlp_by_filename = 1 
"Select buffered files (files that have been open at one point in current session)
nnoremap <Leader>b :CtrlPBuffer<CR>
"Select recently used files
nnoremap <Leader>cd :CtrlPMRU C:/<CR> 

"FZF:--------------------------------------------------------------
"Open FZF
nnoremap <Leader>cn :Files<CR>

"EMMET:------------------------------------------------------------
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-k>'
 
"LIGHTLINE:--------------------------------------------------------
let g:lightline = {}
let g:lightline = {'colorscheme': 'gruvbox'}
set laststatus=2 "Needed to display lightline"
set noshowmode "Mode is already displayed by lightline, so we can hide it"

"QUICK ACCESS FOR EVERYONE:----------------------------------------
"Directories
nnoremap <Leader>.home :cd ~<CR>
nnoremap <Leader>.files :cd ~\vimfiles<CR>
nnoremap <Leader>.ftplugin :cd ~\vimfiles\ftplugin<CR>
nnoremap <Leader>.plugin :cd ~\vimfiles\plugin<CR>
"Files
nnoremap <Leader>.vrc :e $MYVIMRC<CR>
nnoremap <Leader>.sets :e ~\vimfiles\plugin\sets.vim<CR>
nnoremap <Leader>.maps :e ~\vimfiles\plugin\maps.vim<CR>
"Open cheat sheet in new horizontal split, instead of current window
nnoremap <Leader>? <C-w>s:view ~\vimfiles\CheatSheet.txt<CR>

"PERSONAL QUICK ACCESS: (Delete these and make your own!)----------
"Directories
nnoremap <Leader>.ryayoung :cd ~\ryayoung<CR>
nnoremap <Leader>.dw :cd ~\ryayoung\data-warehousing<CR>
nnoremap <Leader>.auto :cd ~\ryayoung\karve-automation<CR>
nnoremap <Leader>.web :cd ~\web-programming<CR>
nnoremap <Leader>.plug :cd ~\vimfiles\plugged<CR>
nnoremap <Leader>.du :cd ~\Onedrive\ -\ University\ of\ Denver\School\Y4Q1<CR>
nnoremap <Leader>.www :cd ~\Onedrive\ -\ University\ of\ Denver\School\Y4Q1\COMP\ 3410\ WWW\ Programming<CR>
nnoremap <Leader>.pm :cd ~\Onedrive\ -\ University\ of\ Denver\School\Y4Q1\INFO\ 3340\ Project\ Management<CR>
nnoremap <Leader>.mgmt :cd ~\Onedrive\ -\ University\ of\ Denver\School\Y4Q1\MGMT\ 3000\ Policy\ Strategy<CR>
"Files
nnoremap <Leader>.boot :e ~\web-programming\misc\BOOTSTRAP-TEMPLATE.html<CR>

"NOT USED:---------------------------------------------------------
"Not sure what these do, so I'll comment them out for now
"let g:gruvbox_number_column='bg0'
"let g:netrw_browse_split=2
"let g:netrw_winsize = 25
"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] 
"let g:ctrlp_open_new_file = 't'
"let g:ctrlp_working_path_mode = 'rw'


" FUNCTIONS:-------------------------------------------------------
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
