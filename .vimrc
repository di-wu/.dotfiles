syntax on
set number

" No beeps.
set visualbell

" UTF-8
set encoding=utf-8
set fileencoding=utf-8

" tabstop     - show tab as 4 spaces
" shiftwidth  - when indenting, use 4 spaces
" softtabstop - ctrl tab & backspace to match tabstop
set tabstop=4 shiftwidth=4 softtabstop=4

" Undo history
set undofile
set undodir=~/.vim/undodir

set backspace=indent,eol,start

filetype on
filetype plugin on
filetype indent on

"| go-vim
"| git clone git@github.com:fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go

" goimports on every save
let g:go_fmt_command = "goimports"

"| motoko
autocmd BufNewFile,BufRead *.mo setlocal shiftwidth=2 softtabstop=2 expandtab

