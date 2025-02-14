
<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/BlackArch/Blackarch.png">
<br>

# <h1 align="center">BlackArch Termux</h1>

<p align="center"> BlackArch Linux is a security-focused Arch Linux-based distribution that provides a comprehensive set of tools for penetration testing, digital forensics, and security auditing. The operating system has a large collection of pen-testing tools, including exploit development frameworks, sniffers and network analysis tools, reverse-engineering tools, cryptography tools, and forensics tools. BlackArch’s package manager allows users to easily add and update tools to the system. </p>

<br>

<h3 align="center"><details><summary>Requirements:</summary>
 <br>
 
- `5-15GB storage`
- `arm64`
- [`Termux`](https://github.com/xiv3r/Kali-Linux-Termux/releases/download/Apps/Termux_v0.119.1.apk)

</h3></details>

# BlackArch Linux 
> Auto Install
```diff
-; apt update && apt install wget -y && https://raw.githubusercontent.com/xiv3r/BlackArch-Linux-Termux/refs/heads/main/link/install.sh | bash && clear && blackarch
```
## Login
```diff
+; blackarch
```
## Logout 
```
+; exit
```
## Uninstall
```diff
+; uninstall-blackarch
```
## Reinstall
```
pd reinstall blackarch
```
## More options
```diff
+; proot-distro --help
```
------------------
# Update & Upgrade

    pacman -Syyu
    
## Install selected tools

    pacman -S (name of tool)


## list all of the available tools
   
    pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u

## Install all of the tools

    pacman -S blackarch
    
## Install a category of tools
    
    pacman -S blackarch-<category>
    
## See the blackarch categories

    pacman -Sg | grep blackarch
