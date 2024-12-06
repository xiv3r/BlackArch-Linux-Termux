#!/bin/bash

###
apt install proot-distro wget -y
###
echo "clear && pd sh archlinux" >> $PREFIX/etc/bash.bashrc
###
echo "pd sh archlinux" > $PREFIX/bin/blackarch
###
pd i archlinux
