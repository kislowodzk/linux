#!/bin/bash
grep -v '^#' ~/skrypty/wyszukiwanie | rofi -dmenu | cut -d' ' -f1 | tr -d $'\n' | xclip -selection c
