<img with="1000" height="500" src="https://github.com/xiv3r/BlackArch-Linux-Termux/blob/main/link/images.png">

# <h1 align="center">Termux BlackArch</h1>

<p align="center"> BlackArch Linux is a security-focused Arch Linux-based distribution that provides a comprehensive set of tools for penetration testing, digital forensics, and security auditing. The operating system has a large collection of pen-testing tools, including exploit development frameworks, sniffers and network analysis tools, reverse-engineering tools, cryptography tools, and forensics tools. BlackArch’s package manager allows users to easily add and update tools to the system. </p>

<br>

<h3 align="center"><details><summary>Requirements:</summary>
    
 * `5-15GB storage`
 
 * [`Termux`](https://github.com/xiv3r/Kali-Linux-Termux/releases/download/Apps/Termux_v0.119.1.apk)

</h3></details>

## Auto Install:
```sh
wget -qO- https://raw.githubusercontent.com/xiv3r/BlackArch-Linux-Termux/main/link/install.sh | sh
```
```sh
wget -qO- https://raw.githubusercontent.com/xiv3r/BlackArch-Linux-Termux/refs/heads/main/link/blackarch.sh | sh
```
## Manual Installation:

    apt update && apt full-upgrade -y

    apt install proot-distro wget -y
    
    proot-distro install archlinux

    proot-distro login archlinux

    pacman -Syu

    pacman -Syyu

## Execute balckarch in every termux startup
   
    echo "proot-distro login archlinux" >/$PREFIX/etc/bash.bashrc


## Installing on top of ArchLinux

BlackArch Linux is compatible with existing/normal Arch installations. It acts as an unofficial user repository. Below you will find instructions on how to install BlackArch in this manner.

#### Run [./strap.sh](https://blackarch.org/strap.sh) as root and follow the instructions.
   
    wget https://blackarch.org/strap.sh

#### Verify the SHA1 sum

    echo 5ea40d49ecd14c2e024deecf90605426db97ea0c strap.sh | sha1sum -c

#### Set execute bit

    chmod +x strap.sh

#### Run strap.sh

    ./strap.sh

#### Enable [multilib](https://wiki.archlinux.org/index.php/Official_repositories#Enabling_multilib) and run:

    pacman -Syu


### Run:

    proot-distro login archlinux


## Installing selected tools

    pacman -S (name of tool)



## Install Tools From The Blackarch Repository

#### To list all of the available tools, run
   
    pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u

#### To install all of the tools, run

    pacman -S blackarch
    
#### To install a category of tools, run
    
    pacman -S blackarch-<category>
    
#### To see the blackarch categories, run

    pacman -Sg | grep blackarch
