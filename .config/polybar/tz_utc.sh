#!/bin/bash

FORMAT_SHORT="%R %Z"
FORMAT_LONG="%a %b %d, %Y %H:%M:%S %p %Z"
FORMAT=$FORMAT_SHORT

print_date() {
  TZ=UTC date +"${FORMAT}"
}

update_format_type() {
  if [ "$FORMAT" == "$FORMAT_SHORT" ]; then
    FORMAT=$FORMAT_LONG
  elif [ "$FORMAT" == "$FORMAT_LONG" ]; then
    FORMAT=$FORMAT_SHORT
  fi
}

click() {
  update_format_type
  print_date
}

trap "click" USR1

while true; do
  print_date
  sleep 1 &
  wait
done
