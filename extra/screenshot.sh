#!/bin/bash

# ---------------
#   Screenshot
# ---------------

SCREENSHOTS="$(xdg-user-dir PICTURES)/Screenshots"

if [ -d "$SCREENSHOTS" ]; then
  hyprshot -z -m region -o $SCREENSHOTS
else
  mkdir -p "$SCREENSHOTS"
  ~/.dotfiles/extra/screenshot.sh
fi
