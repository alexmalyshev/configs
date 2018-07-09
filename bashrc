#!/bin/bash

# Prompt: [hostname currentTrimmedPath]
export PROMPT_DIRTRIM=3
PS1='[\h \w] '
PS2='> '
PS3='> '
PS4='+ '

# Increase history size.
export HISTSIZE=130000
export HISTFILESIZE=-1

# By default GDB stores its history file in the current working directory.
export GDBHISTFILE=~/.gdb_history

# Grab aliases.
source ~/.aliases.bash

# Editor variables.  Mercurial doesn't like the `-nw` for some reason.
export EDITOR='emacs -nw'
export HGEDITOR='emacs'

# Hack for setting a 256 color terminal.
if [ "${TERM}" = "xterm" ]; then
  export TERM=xterm-256color
fi

# Disable flow control.
stty -ixon &> /dev/null

# Map C-w to actual backward-kill-word, not terminal's inferior werase.
stty werase undef &> /dev/null
bind '\C-w: backward-kill-word' &> /dev/null

# Function that prepends a directory to PATH if it doesn't already exist in it.
function prepend_path() {
  if [[ ! "${PATH}" =~ "${1}" ]]; then
    export PATH="${1}:${PATH}"
  fi
}
export -f prepend_path

# Register ${HOME}/bin in PATH if it exists.
HOME_BIN="${HOME}/bin"
if [ -d "${HOME_BIN}" ]; then
  prepend_path "${HOME_BIN}"
fi
