#!/bin/bash

###
apt install proot-distro wget -y
###
echo "clear && pd sh archlinux" >> $PREFIX/etc/bash.bashrc
###
pd i archlinux
