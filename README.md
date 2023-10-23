# <h1 align="center">BlackArch-Termux</h1>

<p align="center"> Installing BlackArch Linux on the top of ArchLinux Termux</p>



## Installation:

    apt update && apt full-upgrade -y

    apt install proot-debian
    
    proot-debian install archlinux

    pacman -Syu

    pacman -Syyu


## Installing on top of ArchLinux

BlackArch Linux is compatible with existing/normal Arch installations. It acts as an unofficial user repository. Below you will find instructions on how to install BlackArch in this manner.

#### Run https://blackarch.org/strap.sh as root and follow the instructions.
   
    wget -O https://blackarch.org/strap.sh

#### Verify the SHA1 sum

    echo 5ea40d49ecd14c2e024deecf90605426db97ea0c strap.sh | sha1sum -c

#### Set execute bit

    chmod +x strap.sh

#### Run strap.sh

    ./strap.sh

#### Enable multilib following https://wiki.archlinux.org/index.php/Official_repositories#Enabling_multilib and run:

    sudo pacman -Syu
