#!/bin/bash

# Prompt: [username@hostname currentDir]$
PS1='[\u@\h \W]\$ '
PS2='> '
PS3='> '
PS4='+ '

EDITOR='emacs -nw'

# Grab aliases
. ~/.aliases.bash
