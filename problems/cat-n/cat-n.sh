#!/bin/bash

set -u
if [[ $# -eq 0 ]]; then
  echo USAGE
fi

FILE=$1

i=0
while read LINE; do
  let i++
  echo "$i $LINE"
done < $FILE
