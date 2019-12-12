#!/bin/bash

function f() {
  sleep $(echo "($2 - 1) + $1 / 10 ^ $2" | bc -l)
  echo "$1"
}

while [ -n "$1" ]
do
  f "$1" $(echo -n "$1" | wc -c) &
  shift
done

wait
