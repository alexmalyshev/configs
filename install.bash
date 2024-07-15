#!/bin/bash

unset CDPATH
cd "$(dirname $0)"

if [ "${1}" = '-f' ]; then
  FORCE=1
fi

declare -A CONFIGS=(
  [alacritty.toml]='.config/alacritty/alacritty.toml'
  [aliases.bash]='.aliases.bash'
  [bashrc]='.bashrc'
  [config.fish]='.config/fish/config.fish'
  [ctags]='.ctags'
  [e.fish]='.config/fish/functions/e.fish'
  [ec.fish]='.config/fish/functions/ec.fish'
  [gdbinit]='.gdbinit'
  [gitconfig]='.gitconfig'
  [hgrc]='.hgrc'
  [i3_config]='.config/i3/config'
  [i3status_config]='.config/i3status/config'
  [lesskey]='.lesskey'
  [tmux.conf]='.tmux.conf'
  [update-all.fish]='.config/fish/functions/update-all.fish'
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
