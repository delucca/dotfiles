#!/usr/bin/env bash

function fo {
  local files
  IFS=$'\n' file=($(fzf --query="$1" --exit-0))
  [[ -n "$file" ]] && xdg-open $file
}
