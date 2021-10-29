set guifont=Consolas:h8 "set font

set lines=62 columns=125 "sets size of window that opens

set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right hand scroll bar
set guioptions-=L "remove right hand scroll bar

set autoread "automatically refresh file that's been updated

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
set nowrap "disables wrapping. I enable it again for markdown and txt files below
set nohlsearch "removes highlighting after search
set hidden "allows buffers to remain open in background without saving
set scrolloff=4 "scroll starts when you're x lines from edge
set ignorecase "All searches are case INsensitive
set smartcase "when this and ignorecase are turned on, search is case sensitive unless uppercase is used in search
set nobackup "Vim makes backups of SAVED files. This is different from swap files, which store UNSAVED changes
set undodir=~/vimfiles/undodir
set undofile
set incsearch
set encoding=utf-8 "vim defaults to latin1, but will change based on locale of your environment
"set exrc "uses vimrc from directory you open file from                                            
"set noswapfile "Swap files store changes made to buffer in case of crash. They're annoying. Instead, I store swp files in my vimfiles/tmp directory
"set autochdir "sets directory to that of current file. (disabled because I instead use :cd %:p:h (change local dir to current window) and :Vex (explore files in current file's dir). Both are remapped in vimrc)
    
"FILETYPE DEPENDENT:-----------------------------------------------
augroup htmlsets
    autocmd!
    autocmd FileType html set tabstop=2
    autocmd FileType html set softtabstop=2
    autocmd FileType html set tabstop=2
    autocmd FileType html set softtabstop=2
    autocmd FileType html set shiftwidth=2
    "autocmd FileType html set background=light
augroup END

augroup sqlsets
    autocmd!
    "autocmd FileType sql set background=light
augroup END

augroup mdsets
    autocmd!
    autocmd FileType markdown set wrap linebreak
    autocmd FileType markdown set spell
augroup END

augroup txtsets
    autocmd!
    autocmd FileType txt set wrap linebreak
    autocmd FileType txt set spell
augroup END
