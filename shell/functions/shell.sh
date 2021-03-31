#!/usr/bin/env bash

function fo {
  local files
  IFS=$'\n' file=($(fzf --query="$1" --exit-0))
  [[ -n "$file" ]] && xdg-open $file
}

function dotenv {
  local default_dotenv_path=".env"

  if [ -f "${default_dotenv_path}" ]; then
    export_dotenv_file "${default_dotenv_path}"
  fi

  for stage in $@; do
    local dotenv_path=".env.${stage}"

    if [ -f "${dotenv_path}" ]; then
      export_dotenv_file "${dotenv_path}"
    fi
  done
}

function export_dotenv_file {
  set -a
  eval $(cat "${1}" | sed -e '/^#/d;/^\s*$/d' -e 's/\(\w*\)[ \t]*=[ \t]*\(.*\)/\1=\2/' -e "s/=['\"]\(.*\)['\"]/=\1/g" -e "s/'/'\\\''/g" -e "s/=\(.*\)/='\1'/g")
  set +a
}
