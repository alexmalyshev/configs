EDITOR=vim

alias ll='ls -l'
alias cls='clear; ls'

alias ssha='ssh amalyshe@unix.andrew.cmu.edu'
alias sshs='ssh amalyshe@shark.ics.cs.cmu.edu'
alias sshg='ssh amalyshe@ghc18.ghc.andrew.cmu.edu'

alias gccb='gcc -std=c99 -pedantic -Wall -Wextra'
alias gccf='gccb -fsyntax-only'
alias gccd='gccb -g'
alias gcco='gccb -O3'

alias g++b='g++ -std=c++98 -pedantic -Wall -Wextra'
alias g++f='g++b -fsyntax-only'
alias g++d='g++b -g -ftrapv'
alias g++o='g++b -O3'

alias clangb='clang -std=c99 -pedantic -Wall -Wextra'
alias clangf='clangb -fsyntax-only'
alias clangd='clangb -g -ftrapv -fcatch-undefined-behavior -faddress-sanitizer'
alias clango='clangb -O3'

alias clangb++='clang++ -std=c++98 -pedantic -Wall -Wextra'
alias clangf++='clangb++ -fsyntax-only'
alias clangd++='clangb++ -g -ftrapv -fcatch-undefined-behavior'
alias clango++='clangb++ -O3'

objdmp() {
    objdump -d ${1} | less
}
