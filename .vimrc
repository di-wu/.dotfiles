" LINE NUMBERS
set number

" INDENTATION
" Set tab width to 2 columns
set tabstop=2
" Use 2 column for indentation
set shiftwidth=2
" Use spaces when pressing <tab> key
set expandtab

autocmd BufNewFile,BufRead *.pegn setfiletype pegn
autocmd BufNewFile,BufRead *.abnf setfiletype abnf

