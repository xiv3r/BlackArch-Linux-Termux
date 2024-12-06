#!/bin/bash

###
echo "blackarch" >> $PREFIX/etc/bash.bashrc
###
echo "pd sh archlinux" > $PREFIX/bin/blackarch
###
chmod 700 $PREFIX/bin/blackarch
###
pd i archlinux
