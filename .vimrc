" LINE NUMBERS
set number

" Syntax?
syntax on
colorscheme ron

" INDENTATION
" Set tab width to 2 columns
set tabstop=2
set softtabstop=2
" Use 2 column for indentation
set shiftwidth=2
" Use spaces when pressing <tab> key
set expandtab
" Highlight the current line
set cursorline

" Custom highlighting
autocmd BufNewFile,BufRead *.pegn setfiletype pegn
autocmd BufNewFile,BufRead *.abnf setfiletype abnf

