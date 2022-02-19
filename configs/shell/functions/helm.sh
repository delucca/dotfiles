#!/usr/bin/env bash

function hl {
  helm list $@;
}

function hh {
  helm history $(helm list -q $@);
}
