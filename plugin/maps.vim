"Quit
nnoremap <Leader>q :q<CR>

"Save
nnoremap <Leader>s :w<CR>
"Save and source file. Use this when editing vimrc for your changes to take effect
nnoremap <Leader>2 :w<bar> :source %<CR>

"Open Powershell
nnoremap <Leader>t :terminal powershell<CR>
"Change LOCAL working directory to current file
nnoremap <Leader>cur :lcd %:p:h<CR>
"Change GLOBAL working directory to current file
nnoremap <Leader>cg :cd %:p:h<CR>

"WINDOW MANIPULATION:----------------------------------------------
"Move cursor to adjacent windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
"Move windows easily
nnoremap <Leader>H :wincmd H<CR>
nnoremap <Leader>J :wincmd J<CR>
nnoremap <Leader>K :wincmd K<CR>
nnoremap <Leader>L :wincmd L<CR>
"Resize windows
nnoremap <Leader>- :vertical resize -20<CR>
nnoremap <Leader>= :vertical resize +20<CR>
nnoremap <Leader>[ :resize -15<CR>
nnoremap <Leader>] :resize +15<CR>
"Access window commands not already mapped here. This maps to Ctrl-w
nnoremap <Leader>w <C-w>

"Paste from sys clipboard
nnoremap <Leader>pa "+p
"Copy to sys clipboard
vnoremap <Leader>co "+y

"shift visual lines up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"Quickly set font size
nnoremap <Leader>f :call SetSmallerFont()<CR>:echo GetFontSize()<CR>
nnoremap <Leader>F :call SetLargerFont()<CR>:echo GetFontSize()<CR>

"Exit closing brackets/braces/etc with TAB
inoremap <expr> <Tab> search('\%#[]>")}]', 'n') ? '<Right>' : '<Tab>'

"SMART MARKS:------------------------------------------------------
nnoremap mm mM:echo "GLOBAL MARK 1 SET"<CR>
nnoremap mM mK:echo "GLOBAL MARK 2 SET"<CR>
nnoremap mn mn:echo "LOCAL MARK 1 SET"<CR>
nnoremap mN mb:echo "LOCAL MARK 2 SET"<CR>

"FILETYPE DEPENDENT:-----------------------------------------------
augroup htmlmaps
    autocmd!
    autocmd FileType html nnoremap <Leader>,, 
        \i<!-- Author:  Ryan Young --><CR><!-- Created:  <Esc>"=strftime("%m/%d/%y")<CR>Pa --><CR><!DOCTYPE html><CR>
        \<html></html><Esc>%i<CR><Esc>O<head></head><Esc>%i<CR><Esc>O
        \<style></style><Esc>%i<CR><Esc>O<Tab><Tab><Tab>body {} h1 {}<Esc>jo
        \<meta charset="utf-8"><CR><title></title><Esc>jo
        \<body></body><Esc>%i<CR><Esc>O

    autocmd FileType html nnoremap <Leader>,d1 vf>d<Esc>
    autocmd FileType html nnoremap <Leader>,d2 i`<Esc>lvf>d<Esc>hf<vf>d<Esc>F`x

augroup END

augroup sqlmaps
    autocmd!
augroup END

