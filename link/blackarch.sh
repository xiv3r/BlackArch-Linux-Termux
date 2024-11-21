#!/bin/sh
###
wget -O /etc/bash.bashrc https://raw.githubusercontent.com/xiv3r/BlackArch-Linux-Termux/refs/heads/main/link/bash.bashrc
###
wget -qO- https://blackarch.org/strap.sh | sh
###
pacman -Syu
###
pacman -Syyu

