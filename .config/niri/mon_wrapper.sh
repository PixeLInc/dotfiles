active_monitor() {
  niri msg --json workspaces | jq -r '.[]|select(..|.is_focused?).output'
}

ACTION=$1
INDEX=$2
MONITOR=$(active_monitor)

main() {
  if [ $ACTION = "view" ]; then
    niri_action="focus-workspace"
  else
    niri_action="move-column-to-workspace"
  fi

  if [ $MONITOR = "DP-1" ]; then
    case $INDEX in
      1) niri msg action $niri_action "name1-1" ;;
      2) niri msg action $niri_action "name2-1" ;;
      3) niri msg action $niri_action "name3-1" ;;
      4) niri msg action $niri_action 4 ;;
      5) niri msg action $niri_action 5 ;;
      6) niri msg action $niri_action 6 ;;
      7) niri msg action $niri_action 7 ;;
      8) niri msg action $niri_action "name8-1" ;;
      9) niri msg action $niri_action "name9-1" ;;
      0) niri msg action $niri_action "name0-1" ;;
    esac
  fi

  if [ $MONITOR = "DP-2" ]; then
    case $INDEX in
      1) niri msg action $niri_action "name1-2" ;;
      2) niri msg action $niri_action "name2-2" ;;
      3) niri msg action $niri_action "name3-2" ;;
      4) niri msg action $niri_action "name4-2" ;;
      5) niri msg action $niri_action "name5-2" ;;
      6) niri msg action $niri_action 6 ;;
      7) niri msg action $niri_action "name7-2" ;;
      8) niri msg action $niri_action 8 ;;
      9) niri msg action $niri_action 9 ;;
      0) niri msg action $niri_action 10 ;;
    esac
  fi
}

# niri msg action focus-workspace
# move-workspace-to-index
main
