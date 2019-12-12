#!/bin/bash

function ss_raw() {
  sleep "$1"
  echo "$1"
}

function ss_quick() {
  sleep $(echo "$1 / 10" | bc -l)
  echo "$1"
}

while [ -n "$1" ]
do
  # ss_raw "$1" &
  ss_quick "$1" &
  shift
done

wait
