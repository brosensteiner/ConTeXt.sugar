#!/bin/bash

file="$1"
line="$2"

[ "${file:0:1}" == "/" ] || file="${PWD}/${file}"
[ "${line}" == "" ] && line=1

exec osascript \
  -e "set texFile to POSIX file \"${file}\"" \
  -e "tell application \"Espresso\"" \
  -e "  activate" \
  -e "  open texFile" \
  -e "  tell front document" \
  -e "    refreshtext" \
  -e "    goto line ${line}" \
  -e "  end tell" \
  -e "end tell"