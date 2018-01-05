#!/bin/sh

unset CDPATH
cd "$(dirname $0)"

if [ "${1}" = '-f' ]; then
  FORCE=1
fi

CONFIGS=$(ls | grep -v -e install -e README -e emacs.d)

LN_ARGS='-s'
if [ -n "${FORCE}" ]; then
  LN_ARGS="${LN_ARGS}f"
fi

for CONFIG in ${CONFIGS}; do
  ln "${LN_ARGS}" "$(realpath ${CONFIG})" "${HOME}/.${CONFIG}"
done

TARGET="${HOME}/.emacs.d"
mkdir -p "${TARGET}"

EMACS=$(ls emacs.d)
for EMAC in ${EMACS}; do
  ln "${LN_ARGS}" "$(realpath emacs.d/${EMAC})" "${TARGET}/${EMAC}"
done
