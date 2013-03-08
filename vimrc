" Make sure syntax highlighting is enabled
filetype plugin on
syntax on

" Make sure backspace and delete aren't horribly broken
set backspace=eol,indent,start

" Show the current line number and column at the bottom of the terminal
set ruler

" Always use UNIX file format
set fileformat=unix

" Set tab width to four, and always expand all hard tabs into spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Force vim to insert a newline after typing 80 chars
set textwidth=80

" Don't expand tabs in makefiles, they break if they don't have hard tabs
autocmd FileType make set noexpandtab

" Use tab width of two for SML and Ocaml files
autocmd FileType sml,ocaml set tabstop=2 shiftwidth=2

" Set SML signature files with the correct filetype
autocmd BufRead,BufNewFile *.sig set filetype=sml
