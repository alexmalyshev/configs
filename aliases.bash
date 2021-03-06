#!/bin/bash

# Enable color for ls and grep.

PLATFORM=$(uname)
if [ "${PLATFORM}" = 'Linux' ]; then
  alias ls='ls --color=auto'
elif [ "${PLATFORM}" = 'Darwin' ]; then
  alias ls='ls -G'
fi

alias grep='grep --color=auto'

# Require intervention when mv tries to overwrite a file.
alias mv='mv -i'

# Get rid of the default GUI for emacs.
alias e='emacs -nw'
alias emacs='emacs -nw'
alias ec='emacsclient -nw'

# Wrap the SML and OCaml repls in GNU readline, otherwise they're unusable.
alias sml='rlwrap sml'
alias ocaml='rlwrap ocaml'
