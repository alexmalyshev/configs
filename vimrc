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

" Set SML signature files with the correct filetype
autocmd BufRead,BufNewFile *.sig set filetype=sml
