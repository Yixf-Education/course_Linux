#!/bin/bash

read -p "Input number of lines: " var

for i in $(seq $var $((2*$var-1)))
do
  for j in $(seq $i)
  do
    if [ $j -lt $var ]
    then
      echo -e " \c"
    else
      k=$((RANDOM%10))
      m=$((RANDOM%7))
      n=$((RANDOM%7))
      case $k in
        3)
          echo -e "\033[3$m;5m★\033[0m\c";;
        *)
          echo -e "\033[4$m;3$n;6m♥\033[0m\c";;
      esac
    fi
  done
  ((var--))
  echo
done

