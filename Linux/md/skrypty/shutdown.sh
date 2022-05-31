#!/bin/bash


read -n1 -p "What to do? (k)ill, (r)eboot or (l)og another user?" doit 
case $doit in  
  k|K) shutdown now ;; 
  r|R) reboot ;; 
  l|L) gdmflexiserver ;; 
  *) echo "W klawisz nie umiesz trafic?" ;; 
esac

