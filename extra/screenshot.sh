#!/bin/bash

# ---------------
#   Screenshot
# ---------------

SCREENSHOTS="$(xdg-user-dir PICTURES)/Screenshots"

if [ -d "$SCREENSHOTS" ]; then
  hyprshot -z -m region -o $SCREENSHOTS
else
  mkdir -p "$SCREENSHOTS"
  ~/.config/hypr/apps/screenshot.sh
fi
