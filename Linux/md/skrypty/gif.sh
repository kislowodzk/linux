#!/bin/bash

DIR="$HOME/skrypty/gify/"
LOGO="$(find "$DIR"/*.gif | shuf -n1)"
kitty +kitten icat --align left $LOGO
echo
