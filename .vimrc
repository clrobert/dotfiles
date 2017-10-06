" wishlist


" show current command
set showcmd 

" make vim not backwards compatible; useful for advanced features
set nocompatible  

" use global replacement by default
set gdefault  

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

" let backspace work
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

let $LANG='en'
set langmenu=en

" smart indention on newline
filetype plugin indent on


" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

" return to last edit position when opening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" begin vundle related stuff

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" faster file browsing
Plugin 'kien/ctrlp.vim'

call vundle#end()            " required

" end vundle related stuff
