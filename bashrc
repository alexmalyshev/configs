# Prompt: [username@hostname currentDir]$
PS1='[\u@\h \W]\$ '
PS2='> '
PS3='> '
PS4='+ '

# ls shortcuts
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'

# SSH shortcuts for CMU
alias ssha='ssh amalyshe@unix.andrew.cmu.edu'
alias sshs='ssh amalyshe@shark.ics.cs.cmu.edu'
alias sshg='ssh amalyshe@ghc18.ghc.andrew.cmu.edu'
alias sshe='ssh amalyshe@ece003.ece.cmu.edu'

# Quick ways of setting flags for GCC
alias gccb='gcc -std=c99 -pedantic -Wall -Wextra'
alias gccf='gccb -fsyntax-only'
alias gccd='gccb -g'
alias gcco='gccb -O3'

alias g++b='g++ -std=c++98 -pedantic -Wall -Wextra'
alias g++f='g++b -fsyntax-only'
alias g++d='g++b -g -ftrapv'
alias g++o='g++b -O3'

# Ditto for clang, but add AddressSanitizer for debug aliases
alias clangb='clang -std=c99 -pedantic -Wall -Wextra'
alias clangf='clangb -fsyntax-only'
alias clangd='clangb -g -ftrapv -fsanitize=address'
alias clango='clangb -O3'

alias clangb++='clang++ -std=c++98 -pedantic -Wall -Wextra'
alias clangf++='clangb++ -fsyntax-only'
alias clangd++='clangb++ -g -ftrapv -fsanitize=address'
alias clango++='clangb++ -O3'

# Convenient way to scroll through object files
objdmp() {
    objdump -d ${1} | less
}

# Get rid of the default GUI for emacs
alias emacs='emacs -nw'

# Wrap the SML and OCaml repls in GNU readline, otherwise they're unusable
alias sml='rlwrap sml'
alias ocaml='rlwrap ocaml'
