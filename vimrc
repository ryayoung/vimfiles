" Maintainer:     Ryan Young
" Last Modified:  Oct 06, 2022

" Main configuration file for vim. Many more commands can be found in sets.vim
" and maps.vim inside the plugin folder.

"PLUGINS:---------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'leafgarland/typescript-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'
" Plug 'maxboisvert/vim-simple-complete'
Plug 'jsborjesson/vim-uppercase-sql'
Plug 'tpope/vim-repeat'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'mattn/emmet-vim'
Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-surround'
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-python/python-syntax'
" Plug 'tpope/vim-commentary'
" Plug 'ryayoung/vim-comments-and-headers'
call plug#end()


" SET LEADER KEY:
" ----------------------------------------------------------------------------
let mapleader = " "


" MUST HAVE SETTINGS:
" ----------------------------------------------------------------------------
syntax on "Enables syntax highlighting. Very important
filetype on
filetype plugin on "Tells vim to run files in /ftplugin when the filetype in current window changes.
filetype indent on

" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" AUTOCOMMANDS: --------------------------------------------------------------
" ----------------------------------------------------------------------------

" Set working directory as soon as you enter vim
" NOTE - if you use terminal vim EVER, please remove this line.
autocmd VimEnter * if getcwd() == "/Users/ryanyoung" | cd Desktop | endif

" Toggle line numbering mode to be traditional in insert mode, or relative
" otherwise
augroup numbertoggle "Number mode changes between insert and normal mode
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

" Open file in last known cursor position
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

" For file explorer, delete buffer as soon as its hidden
" au FileType netrw setl bufhidden=delete
"
" If there is no filetype, delete buffer as soon as its hidden
au BufNewFile,BufRead * if empty(&filetype) || &filetype == 'netrw' | set filetype=none | setl bufhidden=delete | endif


augroup netrwclose
    autocmd!
    autocmd FileType netrw :nnoremap <buffer> <esc> :q<CR>
    " autocmd BufLeave * if &filetype == 'netrw' | :q | endif
augroup END

" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" PLUGIN SPECIFIC SETTINGS: --------------------------------------------------
" ----------------------------------------------------------------------------


" PYTHON SYNTAX:
let g:python_highlight_all = 1
let g:python_highlight_builtin_funcs_kwarg = 1
let g:python_slow_sync = 1

" YOUCOMPLETEME:
set completeopt-=preview
" set completeopt+=popup
" set completepopup=height:10,width:60,highlight:Pmenu,border:off
let g:ycm_auto_hover=''
" To Definition
nnoremap gd :YcmCompleter GoTo<cr>
" To Documentation
nnoremap gD :YcmCompleter GetDoc<cr>
" Refactor
nnoremap <leader>C :YcmCompleter RefactorRename 
" Find symbol
nnoremap <leader>g :YcmCompleter GoToSymbol 
" Find all references
nnoremap gr :YcmCompleter GoToReferences<CR>
" Popup
nmap <leader>i <plug>(YCMHover)<Esc>

" NETRW:
let g:netrw_banner=0 " Get rid of stupid banner
let g:netrw_liststyle=3 " Explore in tree format
let g:netrw_altv = 1 " When opening file from explorer by pressing v, open to right
" :Vex - Explore files in dir of current file
" For some reason when I use :Vex, it doesn't recognize netrw filetype.
" So instead, we use :e `dirname %`, an alternative which works.
" :lefta vs opens vertical split to the adjacent left (not far left)
" So this mapping opens netrw to the left, in dir of cur file
nnoremap <silent> <leader>cc :lefta vs<bar> :e `dirname %`<bar> :vertical resize 20<CR>jj
" :vs. explores files in WORKING directory
" This mapping opens netrw to the left, in cur working dir
nnoremap <silent> <leader>cx :lefta vs.<bar> :vertical resize 20<CR>jj

" UNDOTREE:
" Show undo history
nnoremap <leader>u :UndotreeShow<CR>

" GRUVBOX:
colorscheme gruvbox
let g:gruvbox_contrast_light='soft'
let g:gruvbox_contrast_dark='soft'
set background=dark

" CTRLP:
" Window will display 15 files and load 100. [Results] attr should be as high
" as possible without experiencing a slow-down
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:150' 
" Default to searching by filename only instead of path"
let g:ctrlp_by_filename = 1 
" Ignore stuff
" let g:ctrlp_custom_ignore = 'dist'
let g:ctrlp_custom_ignore = 'env\|dist'
" let g:ctrlp_custom_ignore = '.git'
" Select buffered files (files that have been open at one point in current session)
nnoremap <Leader><Leader> :CtrlPBuffer<CR>
" Select recently used files
nnoremap <Leader>cd :CtrlPMRU C:/<CR> 
" Open file finder in current working directory
nnoremap <Leader>cn :CtrlP getcwd()<CR>
" Clear cache
nnoremap <silent> <leader>cm :CtrlPClearCache<CR>

" EMMET:
let g:user_emmet_install_global = 0
autocmd FileType html,css,md EmmetInstall
let g:user_emmet_leader_key='<C-l>'

" LIGHTLINE:
let g:lightline = {}
let g:lightline = {'colorscheme': 'gruvbox'}
set laststatus=2 "Needed to display lightline"
set noshowmode "Mode is already displayed by lightline, so we can hide it"

" VIM COMMENTS AND HEADERS:
" Your name goes here:
let g:my_name = "Ryan Young"

" PERSONAL PLUGINS:
let g:change_accent_enabled = 0
" Enable this line to disable the noerrmsg plugin and show errors again:
let g:loaded_noerrmsg = 0

" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" QUICK ACCESS DIRECTORIES FILES AND SESSIONS: -------------------------------
" ----------------------------------------------------------------------------

" QUICK ACCESS NON SPECIFIC:
" Directories (changes global working directory)
nnoremap <Leader>.home :cd /Users/ryanyoung<CR>:call OutputDir()<CR>
nnoremap <Leader>.desk :cd ~/Desktop<CR>:call OutputDir()<CR>
nnoremap <Leader>.vim :cd ~/.vim<CR>:call OutputDir()<CR>
nnoremap <Leader>.ftplugin :cd ~/.vim/ftplugin<CR>:call OutputDir()<CR>
nnoremap <Leader>.plugin :cd ~/.vim/plugin<CR>:call OutputDir()<CR>
" Files 
nnoremap <Leader>.vrc :e ~/.vim/vimrc<CR>:call OutputFile()<CR>
nnoremap <Leader>.set :e ~/.vim/plugin/set.vim<CR>:call OutputFile()<CR>
nnoremap <Leader>.map :e ~/.vim/plugin/map.vim<CR>:call OutputFile()<CR>
nnoremap <Leader>.fun :e ~/.vim/plugin/fun.vim<CR>:call OutputFile()<CR>
" Change LOCAL working directory to current file
nnoremap <Leader>.cur :lcd %:p:h<CR>:call OutputDir()<CR>
" Change GLOBAL working directory to current file
nnoremap <Leader>.cg :cd %:p:h<CR>:call OutputDir()<CR>

" SESSIONS:
" Open or save vim config session
nnoremap <leader>..vrc :source ~/.vim/sessions/vrc.vim<CR>
nnoremap <leader>.1vrc :mks! ~/.vim/sessions/vrc.vim<CR>
" Open Sessions
nnoremap <leader>..tso :source ~/.vim/sessions/tso.vim<CR>
nnoremap <leader>..cap :source ~/.vim/sessions/cap.vim<CR>
nnoremap <leader>..sql :source ~/.vim/sessions/sql.vim<CR>
" Save Sessions
nnoremap <leader>.1tso :mks! ~/.vim/sessions/tso.vim<CR>
nnoremap <leader>.1cap :mks! ~/.vim/sessions/cap.vim<CR>
nnoremap <leader>.1sql :mks! ~/.vim/sessions/sql.vim<CR>

" PERSONAL DIRECTORIES:
nnoremap <Leader>.ryayoung :cd ~\ryayoung<CR>
nnoremap <Leader>.tso :cd ~/ryayoung/python-packages/tsopt<CR>:call OutputDir()<CR>
nnoremap <Leader>.tsw :cd ~/ryayoung/tsopt-web<CR>:call OutputDir()<CR>
nnoremap <Leader>.twitter :cd ~/ryayoung/twitter-data/twitter<CR>:call OutputDir()<CR>
nnoremap <Leader>.cloud :cd ~/ryayoung/twitter-data/cloud-function<CR>:call OutputDir()<CR>
nnoremap <Leader>.main :cd ~/ryayoung/twitter-data/main<CR>:call OutputDir()<CR>
nnoremap <Leader>.random :cd ~/ryayoung/twitter-data/random-files<CR>:call OutputDir()<CR>
nnoremap <Leader>.sql :cd ~/ryayoung/parrot-sql/sql-test<CR>:call OutputDir()<CR>
nnoremap <Leader>.yt :cd ~/ryayoung/youtube/youtube<CR>:call OutputDir()<CR>
nnoremap <Leader>.parrify :cd ~/ryayoung/parrify<CR>:call OutputDir()<CR>
nnoremap <leader>.rust :cd ~/ryayoung/learning-rust<CR>:call OutputDir()<CR>
nnoremap <leader>.news :cd ~/ryayoung/news-feeds/news<CR>:call OutputDir()<CR>
nnoremap <leader>.cap :cd ~/Documents/school/Capstone<CR>:call OutputDir()<CR>
nnoremap <leader>.cha :cd ~/Documents/school/Capstone/packages/chart-tools<CR>:call OutputDir()<CR>
nnoremap <leader>.crime :cd ~/Documents/school/Capstone/packages/crime<CR>:call OutputDir()<CR>
nnoremap <leader>.dash :cd ~/Documents/school/Capstone/dash-apps/colorado-crime<CR>:call OutputDir()<CR>

