#!/bin/bash
grep -v '^#' ~/skrypty/wyszukiwanie | wofi -H 400 -W 600 --show drun --insensitive -I -l center --dmenu | cut -d' ' -f1 | tr -d $'\n' | xclip -selection c
