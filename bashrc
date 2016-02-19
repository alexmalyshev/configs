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

# Grab aliases.
. ~/.aliases.bash

EDITOR='emacs -nw'

# Hack for setting a 256 color terminal.
if [ "$TERM" == "xterm" ]; then
  export TERM=xterm-256color
fi

# Disable flow control.
stty -ixon &> /dev/null

# Map C-w to actual backward-kill-word, not terminal's inferior werase.
stty werase undef &> /dev/null
bind '\C-w: backward-kill-word' &> /dev/null
