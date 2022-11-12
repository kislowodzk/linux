#!/bin/bash
grep -v '^#' ~/skrypty/wyszukiwanie | rofi -dmenu | cut -d' ' -f1 | xclip -selection c
