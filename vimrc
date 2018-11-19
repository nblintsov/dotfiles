set nocompatible
set number
filetype plugin on
set hls "включает подсветку поиска"

filetype off                  " required

"set mouse=a
"map <ScrollWheelUp> <C-Y>
"map <ScrollWheelDown> <C-E>
set undofile
set undodir=/home/nblintsov/.vim/undodir
set undolevels=1000
set undoreload=10000

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'sbdchd/vim-shebang'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'itchyny/lightline.vim'
"Plugin 'chase/vim-ansible-yaml'
Plugin 'sheerun/vim-polyglot'
" Plugin 'kana/vim-textobj-entire'

call vundle#end()            " required Vundle
filetype plugin indent on    " required Vundle
set shiftwidth=4 softtabstop=4 expandtab " setting tabs
set wildmode=longest,list " bash style in Ex editor
map <C-h> <C-w>h " moving in buffers split
map <C-k> <C-w>k " moving in buffers split
map <C-l> <C-w>l " moving in buffers split
map <C-j> <C-w>j " moving in buffers split
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
noremap <Up> <Nop>    " off left, right, up, down
noremap <Down> <Nop>  " off left, right, up, down
noremap <Left> <Nop>  " off left, right, up, down
noremap <Right> <Nop> " off left, right, up, down
runtime macros/matchit.vim " run between key words

syntax on
au! BufNewFile * ShebangInsert
let g:shebang#shebangs = {
            \ 'python': '#!/usr/bin/env python3',
            \ }
" Set to show invisibles (tabs & trailing spaces) & their highlight color
set list listchars=tab:»\ ,trail:·
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%79v.\+/
" match OverLength /\%99v.\+/
