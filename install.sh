#!/bin/bash

apt update
###
apt full-upgrade -y
###
apt install proot-distro wget -y
###
echo "proot-distro login archlinux" >/$PREFIX/etc/bash.bashrc
###
proot-distro install archlinux
###
proot-distro login archlinux
