#!/usr/bin/env bash

set -eu

readonly INSTALL_TO=$1
readonly DOTFILE_DIR=$(cd $(dirname $BASH_SOURCE); pwd)/

symlink_files=(
    '.safe-rm'
)

for symlink_file in ${symlink_files[@]}; do
    ln -s "${DOTFILE_DIR}${symlink_file}" "${INSTALL_TO}${symlink_file}"
done
