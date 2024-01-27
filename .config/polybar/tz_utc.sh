#!/bin/bash

sleep_pid=0

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

  if [ "$sleep_pid" -ne 0 ]; then
    kill $sleep_pid >/dev/null 2>&1
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
  sleep_pid=$!
  wait
done
