call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/taglist.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'wincent/command-t'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'tomtom/tcomment_vim'
Plug 'garbas/vim-snipmate'
Plug 'wincent/scalpel'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
Plug 'haya14busa/incsearch.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'kana/vim-operator-user'
Plug 'rhysd/vim-clang-format'
Plug 'brookhong/cscope.vim'

call plug#end()
syntax on
filetype plugin indent on

colorscheme molokai

let mapleader=" "
let CommandTMaxFiles=1000000
let CommandTTraverseSCM='pwd'

set laststatus=2
set hidden
set wildignore+=*/obj/**
set wildignore+=*/out/**
set expandtab
set tabstop=2
set shiftwidth=2
set number
set clipboard=unnamed
set nowrap
set hlsearch
set relativenumber
set foldmethod=indent
set foldlevel=10
set cursorline
set colorcolumn=80

nnoremap <silent><leader>0 : set norelativenumber<CR>
nnoremap <silent><leader>9 : set relativenumber<CR>
nnoremap <silent><leader>5 : set diffopt+=iwhite<CR>
nnoremap <silent><leader>p :let @* = expand("%:p")<CR>
nnoremap <silent><leader>P :let @* = expand("%:t")<CR>
nnoremap <silent><leader><C-p> :let @* = expand("%:p:h")<CR>
nnoremap <silent><leader>1 :w!<CR>
nnoremap <silent><leader>3 :q<CR>
nnoremap <silent><leader>n :NERDTreeToggle<CR>
nnoremap <silent><leader>N :NERDTreeFind<CR>
nnoremap <silent><leader>B :CommandTBuffer<CR>
nnoremap <silent><leader>w :CommandTLine<CR>
nnoremap <silent><leader>W :CommandTTag<CR>
nnoremap <silent><leader>f :CommandT<CR>
nnoremap <silent><leader>A :Ack! --asm --cpp --cc --follow <C-r><C-W><CR>
nnoremap <leader>a :Ack! --asm --cpp --cc --follow ""<Left>
nnoremap <leader><C-a> :Ack! --asm --cpp --cc --follow "<C-r><C-W>"<Left>
nnoremap <leader>t :TlistToggle<CR><C-h><C-h>
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-x> <C-W>c
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
nnoremap * *N
nnoremap <silent><leader>* :nohlsearch<CR>
nnoremap <leader><leader> <C-^>
nnoremap <leader>l1 :set foldlevel=1<CR>
nnoremap <leader>l2 :set foldlevel=100<CR>
nmap <leader>c <Plug>(Scalpel)
vmap <leader>y "+y
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

"let g:clang_format#command = "clang-format-3.8"
let g:clang_format#code_style = "Mozilla"
 
vmap <silent>= :ClangFormat<CR>
nmap <silent><leader>= :<C-u>ClangFormat<CR>

" refresh the content of the current file
nnoremap  <leader>5 :e %<CR>

"Neovim terminal
nnoremap  <leader>7 :terminal<CR>a
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
tnoremap <C-o> <C-\><C-N>
tnoremap <Esc> <C-\><C-N>

" Windows Linux Subsystem
if !has("clipboard") && executable("clip.exe")
  func! GetSelectedText()
    normal gv"xy
    let result = getreg("x")
    return result
  endfunc
  noremap <silent><C-Ins> :call system('clip.exe', GetSelectedText())<CR>
endif

nnoremap <leader>m :ts<CR>
