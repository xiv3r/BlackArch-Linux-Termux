<img width="1000" height="800" src="https://github.com/xiv3r/BlackArch-Linux-Termux/blob/main/link/blackarch.png">

# <h1 align="center">BlackArch Termux</h1>

<p align="center"> BlackArch Linux is a security-focused Arch Linux-based distribution that provides a comprehensive set of tools for penetration testing, digital forensics, and security auditing. The operating system has a large collection of pen-testing tools, including exploit development frameworks, sniffers and network analysis tools, reverse-engineering tools, cryptography tools, and forensics tools. BlackArch’s package manager allows users to easily add and update tools to the system. </p>

<br>

<h3 align="center"><details><summary>Requirements:</summary>
    
`5-15GB storage`

[`Termux`](https://github.com/xiv3r/Kali-Linux-Termux/releases/download/Apps/Termux_v0.119.1.apk)

</h3></details>

## Auto Install
> include autologin on start-up
```sh
termux-setup-storage && apt update && apt upgrade -y && pkg install wget -y && echo "clear && proot-distro login archlinux" >> $PREFIX/etc/bash.bashrc && wget -qO- https://raw.githubusercontent.com/xiv3r/BlackArch-Linux-Termux/main/link/install.sh | sh
```
```sh
wget -qO- https://raw.githubusercontent.com/xiv3r/BlackArch-Linux-Termux/refs/heads/main/link/blackarch.sh | sh
```
## Manual Login
```sh
proot-distro login archlinux
```
## Add your own custom terminal username
> replace the name `xiv3r` to your name
```sh
sed -i 's/user=kali/user=xiv3r/' /etc/bash.bashrc && source /etc/bash.bashrc
```
## Install selected tools

    pacman -S (name of tool)


## list all of the available tools
   
    pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u

## Install all of the tools

    pacman -S blackarch
    
#### Install a category of tools
    
    pacman -S blackarch-<category>
    
#### See the blackarch categories

    pacman -Sg | grep blackarch
