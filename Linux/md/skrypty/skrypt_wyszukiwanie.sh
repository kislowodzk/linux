#!/bin/bash
xdotool type $(grep -v '^#' ~/skrypty/wyszukiwanie | rofi -dmenu | cut -d' ' -f1)
