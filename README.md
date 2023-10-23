# <h1 align="center">BlackArch-Termux</h1>

<p align="center"> BlackArch Linux is a security-focused Arch Linux-based distribution that provides a comprehensive set of tools for penetration testing, digital forensics, and security auditing. The operating system has a large collection of pen-testing tools, including exploit development frameworks, sniffers and network analysis tools, reverse-engineering tools, cryptography tools, and forensics tools. BlackArch’s package manager allows users to easily add and update tools to the system. </p>

<br>

<details><summary>Requirements:
</summary>
    
 * `5-15GB storage`
 * `aarch64`
 * `arm64`
 *  `armeabi-v7a`
 * `armeabi-v8a`
 * `Termux`
</details>

## Installation:

    apt update && apt full-upgrade -y

    apt install proot-debian
    
    proot-debian install archlinux

    pacman -Syu

    pacman -Syyu


## Installing on top of ArchLinux

BlackArch Linux is compatible with existing/normal Arch installations. It acts as an unofficial user repository. Below you will find instructions on how to install BlackArch in this manner.

#### Run [./strap.sh](https://blackarch.org/strap.sh) as root and follow the instructions.
   
    wget -O https://blackarch.org/strap.sh

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



## Install Tools From The Blackarch Repository

#### To list all of the available tools, run
   
    pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u

#### To install all of the tools, run

    pacman -S blackarch
    
#### To install a category of tools, run
    
    pacman -S blackarch-<category>
    
#### To see the blackarch categories, run

    pacman -Sg | grep blackarch
