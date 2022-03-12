#!/bin/bash

sudo apt install htop
sudo apt install cmatrix
sudo apt install tree
sudo apt install vim

sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt update
sudo apt install alacritty

sudo apt-get install awesome
sudo apt-get install compton

sudo apt install blueman
sudo apt install xscreensaver

sudo apt-get install ubuntu-restricted-extras
sudo apt install -y libavcodec-extra libdvd-pkg
sudo dpkg-reconfigure libdvd-pkg

sudo systemctl enable fstrim.timer
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install tlp tlp-rdw
sudo tlp start
systemctl enable tlp.service

sudo apt install neofetch

sudo apt install flameshot

sudo echo 'set completion-ignore-case On' >> /etc/inputrc

sudo apt install lolcat // tęczowe napisy

sudo apt install git

sudo apt install zsh
sudo apt install zsh-syntax-highlighting
chsh -s /bin/zsh

mkdir ~/.cache/zsh/history

sudo apt install ncal
sudo apt instal tty-clock

sudo add-apt-repository ppa:ytvwld/asciiquarium
sudo apt install asciiquarium

sudo apt install stacer

sudo apt-get install arandr

sudo apt install fzf

