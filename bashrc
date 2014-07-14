#!/bin/bash

# Prompt: [username@hostname currentDir]$
PS1='[\u@\h \W]\$ '
PS2='> '
PS3='> '
PS4='+ '

# Grab aliases.
. ~/.aliases.bash

EDITOR='emacs -nw'

# Hack for setting a 256 color terminal.
if [ "$COLORTERM" == "gnome-terminal" ] || [ "$COLORTERM" == "xfce4-terminal" ]
then
  TERM=xterm-256color
fi

# Disable flow control.
stty -ixon

# Map C-w to actual backward-kill-word, not terminal's inferior werase.
stty werase undef
bind '\C-w: backward-kill-word'
