#!/bin/sh

unset CDPATH
cd "$(dirname $0)"

if [ "${1}" = '-f' ]; then
  FORCE=1
fi

CONFIGS="$(ls | grep -v install | grep -v README)"

LN_ARGS='-s'
if [ -n "${FORCE}" ]; then
  LN_ARGS="${LN_ARGS}f"
fi

for CONFIG in ${CONFIGS}; do
  ln "${LN_ARGS}" "$(realpath ${CONFIG})" "${HOME}/.${CONFIG}"
done
