" Modified by Ryan Young, 2021. Originally created by Wouter Bolsterlee in 2004
" Last modified: 10-30-21
function! AdjustFontSize(amount)
    if !has("gui_running")
        echoerr "You need to run a GUI version of Vim to use this function."
    endif

    let l:minfontsize = 6
    let l:maxfontsize = 16

    " Windows and macOS &guifont: Hack\ NF:h10:cANSI
    " Linux &guifont: Hack\ Nerd\ Font\ Mono\ Regular\ 10
    
    " A multiplatform pattern for Linux, Windows, and macOS:
    " \v            very magical.
    " (^\D{-1,})    Capture group 1 = [Anchored at the start of the string, match any character that is not [0-9] 1 or more times non-greedy].
    " (\d+)         Capture group 2 = [match [0-9] 1 or more times].
    " (\D*$)        Capture group 3 = [match any character that is not [0-9] 0 or more times to the end of the string].
    let l:pattern = '\v(^\D{-1,})(\d+)(\D*$)'

    " Break the font string into submatches.
    let l:matches = matchlist(&guifont, l:pattern)
    let l:start = l:matches[1]
    let l:size = l:matches[2]
    let l:end = l:matches[3]

    let newsize = l:size + a:amount
    if (newsize >= l:minfontsize) && (newsize <= l:maxfontsize)
        let newfont = l:start . newsize . l:end
        let &guifont = newfont
    endif

    "Here is a rough attempt at keeping window width from changing too much
    let &lines = &lines + 100
    if a:amount < 0
        let &columns = &columns + (&columns / 8)
    else
        let &columns = &columns - (&columns / 8)
    endif
endfunction

nnoremap <silent> <F11> :call AdjustFontSize(-1)<CR>:call ShowFontSize()<CR>
inoremap <silent> <F11> <Esc>:call AdjustFontSize(-1)<CR>:call ShowFontSize()<CR>a
vnoremap <silent> <F11> <Esc>:call AdjustFontSize(-1)<CR>:call ShowFontSize()<CR>
cnoremap <silent> <F11> <Esc>:call AdjustFontSize(-1)<CR>:call ShowFontSize()<CR>
onoremap <silent> <F11> <Esc>:call AdjustFontSize(-1)<CR>:call ShowFontSize()<CR>

nnoremap <silent> <F12> :call AdjustFontSize(1)<CR>:call ShowFontSize()<CR>
inoremap <silent> <F12> <Esc>:call AdjustFontSize(1)<CR>:call ShowFontSize()<CR>a
vnoremap <silent> <F12> <Esc>:call AdjustFontSize(1)<CR>:call ShowFontSize()<CR>
cnoremap <silent> <F12> <Esc>:call AdjustFontSize(1)<CR>:call ShowFontSize()<CR>
onoremap <silent> <F12> <Esc>:call AdjustFontSize(1)<CR>:call ShowFontSize()<CR>

" Hold Control + scroll mouse-wheel to zoom text.
" NOTE: This event only works for Linux and macOS. SEE: :h scroll-mouse-wheel
map <silent> <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
map <silent> <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>

function! ShowFontSize()
    let l:pattern = '\v(^\D{-1,})(\d+)(\D*$)'
    " Break the font string into submatches.
    let l:matches = matchlist(&guifont, l:pattern)
    echom "FONT SIZE: " . l:matches[2]
endfunction
