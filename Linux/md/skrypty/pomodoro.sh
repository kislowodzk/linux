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
    echo "$x m $y s     \n\n\n\n" | figlet -t -c
    printf '\033[;H'
    sleep 1
done
unhide_cursor
clear
cmatrix

