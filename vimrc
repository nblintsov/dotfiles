set nocompatible
set number

set undofile
set undodir=/home/nblintsov/.vim/undodir
set undolevels=1000
set undoreload=10000

" Global tab width.
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set rtp+=~/.vim/bundle/Vundle.vim
set hidden
set background=dark
set encoding=utf8

filetype off
filetype plugin indent on

call vundle#begin()
call vundle#end()

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'L9'
Plugin 'tpope/vim-fugitive'
Plugin 'VundleVim/Vundle.vim'
Plugin 'mbbill/undotree'
Plugin 'bash-support.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'ap/vim-buftabline'
Plugin 'sollidsnake/vterm'
Plugin 'vim-syntastic/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'moll/vim-bbye'

"Plugin 'cj/vim-webdevicons'
"Plugin 'ryanoasis/vim-devicons'
"Plugin 'ryanoasis/nerd-fonts'
"Plugin 'w0rp/ale'
"Plugin 'pearofducks/ansible-vim'
"Plugin 'chase/vim-ansible-yaml'

map <C-e> :NERDTreeToggle<CR>

nnoremap <A-Right> :bnext<CR>
nnoremap <A-Left> :bprev<CR>
nnoremap <C-C> :Bdelete<CR>
nnoremap <C-N> :set nonu<CR>
nnoremap <C-N><C-N> :set nu<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:airline_powerline_fonts = 1

" Set to show invisibles (tabs & trailing spaces) & their highlight color
set list listchars=tab:»\ ,trail:·

" Configure spell checking
nmap <silent> <leader>p :set spell!<CR>
set spelllang=en_us
