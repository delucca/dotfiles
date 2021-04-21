#!/usr/bin/env bash

alias gmx="docker run -it --user=$(id -u):$(id -g) -v ${PWD}:${PWD} -w ${PWD} --rm gromacs/gromacs:latest gmx"
