#!/bin/sh

###
wget https://blackarch.org/strap.sh
###
echo 5ea40d49ecd14c2e024deecf90605426db97ea0c strap.sh | sha1sum -c
###
chmod +x strap.sh
###
./strap.sh
###
pacman -Syu
###
pacman -Syyu

