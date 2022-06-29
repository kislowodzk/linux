#!/bin/bash

# DIR="$HOME/skrypty/obrazki/"
DIR="$HOME/.tapeta/gruvbox_orange/"
LOGO="$(find "$DIR"/* | shuf -n1)"
# LOGO="$(find "$DIR"/* | shuf -n1)"
# kitty +kitten icat --align left $LOGO
feh --no-fehbg --bg-scale $LOGO
echo
