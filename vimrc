" Make sure syntax highlighting is enabled
filetype plugin on
syntax on

" Do not use the vi defaults
set nocompatible

" Make sure backspace and delete aren't horribly broken
set backspace=eol,indent,start

" Show the current line number and column at the bottom of the terminal
set ruler

" Have searches that are in all lowercase be case insensitive, and searches
" with at least one capital letter as case sensitive
set ignorecase
set smartcase

" Use incremental search
set incsearch

" Don't highlight search results
set nohlsearch

" Always use UNIX file format
set fileformat=unix

" Set tab width to two, and always expand all hard tabs into spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Don't expand tabs in makefiles, they break if they don't have hard tabs
autocmd FileType make set noexpandtab

" Set SML signature files with the correct filetype
autocmd BufRead,BufNewFile *.sig set filetype=sml
