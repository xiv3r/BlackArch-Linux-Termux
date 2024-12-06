#!/bin/sh

###
pacman -Syyu --noconfirm
###
pacman-key --init
###
pacman-key --populate archlinuxarm
###
wget -O /etc/bash.bashrc https://raw.githubusercontent.com/xiv3r/BlackArch-Linux-Termux/refs/heads/main/link/bash.bashrc
###
wget https://blackarch.org/strap.sh
###
chmod +x strap.sh
###
bash strap.sh
###
pacman -Syyu

