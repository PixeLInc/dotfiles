#!/usr/bin/env bash

# Hardcode the output names provided by xrandr
# declare -A decor=(
#  [VGA-1]="left>" [VGA-2]="right>" [VIRTUAL-1]="x>"
# )

declare -A decor=(
  [DisplayPort-1]="right" [HDMI-A-0]="left"
)

declare -A decor
declare -a def_decor=( a b c d )

active_monitor() {
  i3-msg -t get_tree | jq -r '.nodes[]|select(..|.focused?).name'
}

case ${1:?must specify action (move|workspace)} in
  move) cmd="move container to" ;;
  workspace) ;;
  *) exit 1  ;;
esac

ws=${2:?must specify workspace}
current_monitor=$(active_monitor)
pre=${decor["$(active_monitor)"]:?Something went very wrong}
ws_monitor=$(i3-msg -t get_workspaces | jq -r ".[] | select(.name==\"$ws\") | .output")

#set -eax

if [ -n "$ws_monitor" ]; then
  # Workspace exists
  if [ "$ws_monitor" = "$current_monitor" ]; then
    #echo "current workspace"
    # Workspace is on current monitor, just focus it
    i3-msg "${cmd:-} workspace $ws $pre"
  else
    #echo "doesnt exist, create"
    # Workspace doesn't exist, create it on current monitor
    i3-msg "${cmd:-} workspace $ws $pre"
  fi
else
  #echo "no ws_monitor"
  i3-msg "${cmd:-} workspace $ws $pre"
fi
