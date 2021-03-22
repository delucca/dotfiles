#!/usr/bin/env bash

function tns {
  tmux new -s $@ -d
  tmux switch -t $@
}
