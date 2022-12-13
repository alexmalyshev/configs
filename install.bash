#!/bin/bash

unset CDPATH
cd "$(dirname $0)"

if [ "${1}" = '-f' ]; then
  FORCE=1
fi

declare -A CONFIGS=(
  [aliases.bash]='.aliases.bash'
  [bashrc]='.bashrc'
  [config.fish]='.config/fish/config.fish'
  [ctags]='.ctags'
  [gdbinit]='.gdbinit'
  [gitconfig]='.gitconfig'
  [hgrc]='.hgrc'
  [lesskey]='.lesskey'
  [tmux.conf]='.tmux.conf'
  [vimrc]='.vimrc'
)

LN_ARGS='-s'
if [ -n "${FORCE}" ]; then
  LN_ARGS="${LN_ARGS}f"
fi

for FILE in "${!CONFIGS[@]}"; do
  DEST="${CONFIGS[$FILE]}"
  echo "Symlinking ${FILE} to ${DEST}"
  mkdir -p $(dirname "${HOME}/${DEST}")
  ln "${LN_ARGS}" "$(realpath ${FILE})" "${HOME}/${DEST}"
done
