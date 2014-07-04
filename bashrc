#!/bin/bash

# Prompt: [username@hostname currentDir]$
PS1='[\u@\h \W]\$ '
PS2='> '
PS3='> '
PS4='+ '

# Grab aliases.
. ~/.aliases.bash

# Alias for emacs.
EDITOR='e'

# Map C-w to actual backward-kill-word, not terminal's inferior werase.
stty werase undef
bind '\C-w: backward-kill-word'
