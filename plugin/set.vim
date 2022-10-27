" Maintainer:     Ryan Young
" Last Modified:  Aug 26, 2022

" Disable startup welcome screen
set shm+=I

" Tells Vim to place all your swap files there, so your working directory stays clean.
" For this to work, you MUST create a /swapfiles dir inside vimfiles.
set swapfile
set directory^=$HOME/.vim/swapfiles//

set number "enable line numbering
set noshowmode " Don't show what mode you're in. (Use this when using lightline plugin)

set cursorline " Highlight the line the cursor is on

" set guifont=Consolas:h12r"set font
set guifont=Hack\ Nerd\ Font:h13

set linespace=5 " Line spacing

set lines=125 columns=105 "sets size of window that opens. (lines is set to a very high number so it will just always open at the height of your screen)

set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right hand scroll bar
set guioptions-=L "remove left hand scroll bar

set autoread "automatically refresh open files that have been updated elsewhere

set splitright "When opening a vertical split, it will open to the right instead of left
set splitbelow "When opening a horizontal split, it will open to the bottom instead of top

"WHITESPACE:-------------------------------------------------------
"For info on tabstop, softtabstop, expandtab, shiftwidth, watch: http://vimcasts.org/episodes/tabs-and-spaces/
set autoindent "Applies current indentation to the next line when you press enter or O or o
set smartindent "Reacts to syntax of code to indent when you press enter, O or o. (Prereq: autoindent)
set tabstop=4 "Defines how many columns a true tab is
set softtabstop=4 "Defines how far the cursor moves when you hit Tab key. If tabstop=8 and softtabstop=4 and you hit Tab, you'll move forward 4 spaces instead of 1 tab
set expandtab "tabs are made with spaces, so there are no tabs
set shiftwidth=4 "Defines how far to shift text when you press >> or <<, or when vim autoindents based on syntax and filetype
"set backspace=2 "allows you to backspace to prev line 
set backspace=indent,eol,start "Allows you to backspace over everything including auto inserted indents, line breaks, and start of insert

"GENERAL:----------------------------------------------------------
set nowrap "disables wrapping. I enable it again for markdown and txt files in /ftplugin
set nohlsearch "removes highlighting after search
set hidden "allows buffers to remain open in background without saving, so if multiple unsaved files are open, you can quit one without saving, and vim won't make you save it until you close the program.
set scrolloff=4 "scroll starts when you're x lines from top or bottom of page
set ignorecase "All searches are case INsensitive
set smartcase "when this and ignorecase are turned on, search is case sensitive unless uppercase is used in search
set nobackup "Disables backup files. Vim makes backups of SAVED files. This is different from swap files, which store UNSAVED changes
set undodir=~/vimfiles/undodir "Defines the directory in which Vim stores your undo file
set undofile "Tells vim to create an undo file. In this case, it gets stored in the dir. defined above
set incsearch "When searching with "/", results will be highlighted AS you're searching, rather than waiting till you press enter
set encoding=utf-8 "vim defaults to latin1, but will change based on locale of your environment.
" set autochdir "sets directory to that of current file.

