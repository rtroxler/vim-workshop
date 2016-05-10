""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set up runtimepath when using -u /path/to/vimrc to not use the default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set default 'runtimepath' (without ~/.vim folders)
let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after', $VIM, $VIMRUNTIME, $VIM)

let s:portable = expand('<sfile>:p:h')

" add the directory to 'runtimepath'
let &runtimepath = printf('%s,%s,%s/after', s:portable, &runtimepath, s:portable)





"""""""""""""""
" Sane defaults
"""""""""""""""
set nocompatible
set backspace=eol,start,indent

set nobackup
set noswapfile

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

set hlsearch

set autowrite
set hidden

set number

set ttyfast
set lazyredraw

set noesckeys
set ttimeout
set ttimeoutlen=250
set notimeout

if &background =~ 'dark'
  colorscheme ron
else
  colorscheme default
  hi Visual ctermfg=0
endif


"""""""""""""""
" Cursor things
"""""""""""""""
" solid underscore
let &t_SI .= "\<Esc>[4 q"
" blinking block
let &t_EI .= "\<Esc>[1 q"


""""""""""""""""
" Bare mappings
""""""""""""""""
let mapleader = "\<space>"
nnoremap <leader>v :e .vim/.vimrc<CR>
nnoremap <leader>r :!ruby %<CR>

" No crutches
nnoremap <left>  <nop>
nnoremap <right> <nop>
nnoremap <up>    <nop>
nnoremap <down>  <nop>

