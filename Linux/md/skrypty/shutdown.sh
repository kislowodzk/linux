#!/bin/bash


read -n1 -p "What to do? (k)ill, (r)eboot, (e)xit i3 or (l)og out?" doit 
case $doit in  
  k|K) shutdown now ;; 
  r|R) reboot ;; 
  e|E) i3-msg exit ;;
  l|L) gdmflexiserver ;; 
  s|S) systemctl suspend ;;
  *) echo "W klawisz nie umiesz trafic?" ;; 
esac

