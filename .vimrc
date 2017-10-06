" wishlist

" basic variables

" show current command
set showcmd 

" make vim not backwards compatible; useful for advanced features
set nocompatible  

" use global replacement by default
set gdefault  

" ignore search case
set ignorecase 

" tab completion
set wildmenu 

" highlight search results
set hlsearch 

" instant search results
set incsearch

" use regex chars in search
set magic

" highlight matching brackets
set showmatch

" no error bells
set vb t_vb=".

" highlighting
syntax on

set encoding=utf8

" use unix as filetype
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

" tab expansion settings
set expandtab
set shiftwidth=4

let $LANG='en'
set langmenu=en

" return to last edit position when opening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" begin vundle related stuff

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" faster file browsing
Plugin 'kien/ctrlp.vim'

call vundle#end()            " required

" end vundle related stuff
