set nocompatible

" Set up runtimepath when using -u /path/to/vimrc to not use the default
" ~/.vim folder
" set default 'runtimepath' (without ~/.vim folders)
let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after', $VIM, $VIMRUNTIME, $VIM)

let s:portable = expand('<sfile>:p:h')

" add the directory to 'runtimepath'
let &runtimepath = printf('%s,%s,%s/after', s:portable, &runtimepath, s:portable)

set backspace=eol,start,indent

" no back up/swp files
set nobackup
set noswapfile
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp   " store swap files here

syntax on
filetype plugin indent on
set iskeyword+=_,$,@,%,#,-  " don't linebreak when encounter these characters.

set tabstop=2		  " The number of spaces count for a TAB.
set softtabstop=2	" The number of spaces inserted when typing TAB. If not expandtab, type TAB twice, will get one TAB.
set shiftwidth=2	" The number of spaces when auto-indent.
set expandtab		  " Use the spaces only.
set smarttab      " Insert appropriate spaces in front of line according to shiftwidth, tabstop, softtabstop.

set autoindent
set smartindent

set autowrite

set number
colorscheme elflord

":hi Search ctermfg=0 ctermbg=6 
set hlsearch


let mapleader = "\<space>"
nnoremap <leader>v :e .vim/.vimrc<CR>
