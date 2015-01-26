#!/bin/bash

# Enable color for ls and grep.
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Quick ways of setting flags for GCC.
alias gccb='gcc -std=c99 -pedantic -Wall -Wextra'
alias gccf='gccb -fsyntax-only'
alias gccd='gccb -g -fsanitize=address'
alias gcco='gccb -O3'

alias g++b='g++ -std=c++11 -pedantic -Wall -Wextra'
alias g++f='g++b -fsyntax-only'
alias g++d='g++b -g -ftrapv -fsanitize=address'
alias g++o='g++b -O3'

# Ditto for clang.
alias clangb='clang -std=c99 -pedantic -Wall -Wextra'
alias clangf='clangb -fsyntax-only'
alias clangd='clangb -g -ftrapv -fsanitize=address'
alias clango='clangb -O3'

alias clangb++='clang++ -std=c++11 -pedantic -Wall -Wextra'
alias clangf++='clangb++ -fsyntax-only'
alias clangd++='clangb++ -g -ftrapv -fsanitize=address'
alias clango++='clangb++ -O3'

# Gets rid of the default GUI for emacs.
alias e='emacs -nw'

# Wrap the SML and OCaml repls in GNU readline, otherwise they're unusable.
alias sml='rlwrap sml'
alias ocaml='rlwrap ocaml'
