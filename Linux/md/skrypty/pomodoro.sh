#!/bin/sh
unhide_cursor() {
    printf '\e[?25h'
}
trap 'unhide_cursor ; exit' INT

# Hide the cursor (there is probably a much better way to do this)
printf '\e[?25l'
clear
for i in `seq $(($1*60)) -1 1`
do
    x=$((i/60))
    y=$((i%60))
    printf '\033[;H'
    echo "$x m $y s " | toilet
    sleep 1
done
unhide_cursor
cmatrix

