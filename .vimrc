" For vimdiff

let mapleader=" "

set relativenumber
set foldlevel=1000
set cursorline
set hlsearch
set nowrap

nnoremap * *N
nnoremap <silent><leader>* :nohlsearch<CR>

nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-x> <C-W>c

nnoremap <silent><leader>p :let @* = expand("%:p")<CR>
nnoremap <silent><leader>P :let @* = expand("%:t")<CR>
nnoremap <silent><leader><C-p> :let @* = expand("%:p:h")<CR>

nnoremap <silent><leader>1 :w!<CR>
nnoremap <silent><leader>3 :q<CR>
nnoremap  <leader>5 :e %<CR>
nnoremap <silent><leader>0 : set norelativenumber<CR>
nnoremap <silent><leader>9 : set relativenumber<CR>

nnoremap <silent><leader>* :nohlsearch<CR>

nnoremap <silent>= o<Esc><Esc>
nnoremap <silent>- O<Esc><Esc>
nnoremap <silent><C-s> s<Esc><Esc>
nnoremap <silent><leader>[ :vertical resize -5<CR>
nnoremap <silent><leader>] :vertical resize +5<CR>
nnoremap <silent><leader>+ :resize +5<CR>
nnoremap <silent><leader>_ :resize -5<CR>
nnoremap <silent><leader>e :only<CR>
nnoremap <silent><leader>r mm:tabe %<CR>'m
nnoremap <silent><leader>v mm:vsplit %<CR>'m
nnoremap <silent><leader>s mm:split %<CR>'m
nnoremap <silent><leader>R :tabe %<CR>
nnoremap <silent><leader>V :vsplit %<CR>
nnoremap <silent><leader>S :split %<CR>
nnoremap <silent><leader>D :g/<C-r><C-W><CR>
nnoremap <leader>d :g/
