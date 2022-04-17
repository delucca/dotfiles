#!/usr/bin/env bash

alias hd='helm list --deployed | grep -v "NAME" | awk '\''{print $1}'\'' | sort | uniq -c  | awk '\''{print $1,$2}'\'' | grep -v  "^1 "'
