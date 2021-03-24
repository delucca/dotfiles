#!/usr/bin/env bash

function main {
  bash -c "`curl -sL https://get.freshshell.com`"
	mv ~/bin/fresh ~/.local/bin
	rm -rf ~/bin
	rm ~/.freshrc
	ln -s $(pwd)/freshrc ~/.freshrc
	source ~/.fresh/build/shell.sh	
	fresh
}

main
