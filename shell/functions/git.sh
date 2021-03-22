#!/usr/bin/env bash

function git_clone_repository {
  local org=$1
  local project=$2
  local repository="git@github.com:${org}/${project}.git"

  git clone $repository
}

function gcld {
  local org="delucca"

  git_clone_repository $org $@
}
