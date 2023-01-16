#!/bin/bash

sudo apt install neovim -y
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sudo apt install universal-ctags -y

sudo apt-get install ubuntu-restricted-extras; sudo apt install -y libavcodec-extra libdvd-pkg; sudo dpkg-reconfigure libdvd-pkg

sudo apt install zsh -y
sudo apt install zsh-syntax-highlighting -y
sudo apt install neovim -y
sudo apt install kitty -y
sudo apt install rofi -y
sudo apt install zathura -y
sudo apt install compton -y
sudo apt install xautomation -y
sudo apt install streamlink -y
sudo apt install exa -y
sudo apt install brightnessctl -y
sudo apt install ncal -y
sudo apt install tty-clock -y
sudo apt install stacer -y
sudo apt install imwheel -y
sudo apt-get install arandr -y
sudo apt install fzf -y
sudo apt install nitrogen -y
sudo apt install htop -y
sudo apt install btop -y
sudo apt install cmatrix -y
sudo apt install tree -y
sudo apt install blueman -y
sudo apt install neofetch -y
sudo apt install flameshot -y
sudo apt-get install lxappearance -y
sudo apt install vifm -y
sudo apt install ranger -y
sudo apt install pavucontrol -y
sudo apt install mate-control-center -y
sudo apt install mpv -y
sudo apt remove figlet -y
sudo apt remove toilet -y
sudo apt install figlet -y
sudo apt install feh -y
sudo apt install nemo -y
sudo apt install pandoc -y
sudo apt install bat -y
sudo apt install -y texlive texlive-font-utils texlive-pstricks-doc texlive-base texlive-formats-extra texlive-lang-german texlive-metapost texlive-publishers texlive-bibtex-extra texlive-latex-base texlive-metapost-doc texlive-publishers-doc texlive-binaries texlive-latex-base-doc texlive-science texlive-extra-utils texlive-latex-extra texlive-science-doc texlive-fonts-extra texlive-latex-extra-doc texlive-pictures texlive-xetex texlive-fonts-extra-doc texlive-latex-recommended texlive-pictures-doc texlive-fonts-recommended texlive-humanities texlive-lang-polish texlive-lang-english texlive-latex-recommended-doc texlive-fonts-recommended-doc texlive-humanities-doc texlive-luatex texlive-pstricks perl-tk texlive-latex-base
sudo apt install piper -y
sudo apt install gimp -y

sudo add-apt-repository ppa:aslatter/ppa
sudo apt update
sudo apt install alacritty -y

chsh -s /bin/zsh

if command -v curl >/dev/null 2>&1; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)"
else
  sh -c "$(wget -O- https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)"
fi

git clone https://github.com/Haruno19/starfetch
cd starfetch
make
sudo make install

cd

xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search

sudo apt install gnome-tweaks

