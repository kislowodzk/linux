#!/bin/bash

# DIR="$HOME/skrypty/obrazki/"
DIR="$HOME/skrypty/gify/witaj"
LOGO="$(find "$DIR"/*.gif | shuf -n1)"
# LOGO="$(find "$DIR"/* | shuf -n1)"
kitty +kitten icat --align left $LOGO
echo
