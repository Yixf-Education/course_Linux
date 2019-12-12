#!/bin/bash

sleepSortA() {
  while [ -n "$1" ]
  do
    (sleep "$1"; echo "$1") &
    shift
  done
  wait
}

sleepSortB() {
  if test -n "$1"
  then
    ( sleep $1; echo $1 ) &
    shift
    sleepSortB $*
    wait
  fi
}

sleepSortA 2 1 4 3 2 1

sleepSortB 2 1 4 3 2 1

