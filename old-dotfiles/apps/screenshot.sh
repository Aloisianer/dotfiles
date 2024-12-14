#!/bin/bash

# ---------------
#   Screenshot
# ---------------

SCREENSHOTS="$(xdg-user-dir PICTURES)/Screenshots"

if [ -d "$SCREENSHOTS" ]; then
  SIZE="$(slurp)"
  grim -g "$SIZE" "$SCREENSHOTS/Screenshot_$(date +"%Y.%m.%d-%T").png"
  grim -g "$SIZE" - | wl-copy
else
  mkdir -p "$SCREENSHOTS"
  ~/.config/hypr/screenshot.sh
fi