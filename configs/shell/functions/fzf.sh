#!/usr/bin/env bash

function fzf_history_widget_accept {
  fzf-history-widget
  zle accept-line
}

zle -N fzf_history_widget_accept
bindkey '^X^R' fzf_history_widget_accept
