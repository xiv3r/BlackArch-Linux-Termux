#!/bin/sh

###
wget -qO- https://blackarch.org/strap.sh | sh
###
pacman -Syu
###
pacman -Syyu

