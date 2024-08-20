if status is-interactive
    # Commands to run in interactive sessions can go here.

    if not set -q TMUX
        exec tmux
    end
end

# Overwrite some programs with newer variants.

if type -q bat
    alias less bat
end
if type -q eza
    alias ls eza
end
