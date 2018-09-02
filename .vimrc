
" ZirconCode's .vimrc

" remember :retab



set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" PLUGINS
Plugin 'tpope/vim-fugitive'

" Plugin 'scrooloose/nerdtree'

Plugin 'vim-latex/vim-latex'

" ---

call vundle#end()            " required
filetype plugin indent on    " required



"syntax on

" Late suite stuff

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='pdflatex -interaction=nonstopmode $*'



" Vim stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

set number
set showcmd
set incsearch
