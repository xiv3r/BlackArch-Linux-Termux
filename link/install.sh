#!/bin/bash

###
apt install proot-distro wget -y
###
echo "clear && proot-distro login archlinux" >> $PREFIX/etc/bash.bashrc
###
proot-distro install archlinux
###
proot-distro login archlinux
