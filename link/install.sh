#!/data/data/com.termux/files/usr/bin/bash -e

# Install required packages
apt install proot proot-distro bsdtar axel neofetch -y
clear

# Variables
FS="blackarch"
NM="Blackarch"

# Display neofetch with custom ASCII art
neofetch --ascii_distro "$NM"

# Create necessary directories
mkdir -p "$PREFIX/var/lib/proot-distro/installed-rootfs"

# Change directory
cd "$PREFIX/var/lib/proot-distro/installed-rootfs/"

# Download the rootfs using axel
axel -o "$FS.tar.xz" "https://github.com/xiv3r/Termux-Pentesting-Distro/releases/download/rootfs/$FS.tar.xz"

# Extract the rootfs
echo " "
echo "[*] Extracting $NM Linux Rootfs...!!!"
proot --link2symlink bsdtar -xpJf "$FS.tar.xz" 2>/dev/null

# Create a proot-distro configuration file for the Kali minimal rootfs
cat > "$PREFIX/etc/proot-distro/$FS.sh" << EOF
DISTRO_NAME="$NM Linux"
TARBALL_URL['aarch64']="https://github.com/xiv3r/Termux-Pentesting-Distro/releases/download/rootfs/$FS.tar.xz"
TARBALL_SHA256['aarch64']="$(sha256sum "$FS.tar.xz" | awk '{print $1}')"
EOF

# Create a shortcut command to launch the distro
cat > "$PREFIX/bin/$FS" << EOF
#!/data/data/com.termux/files/usr/bin/bash

proot-distro login $FS
EOF
chmod 700 "$PREFIX/bin/$FS"

# Add start-up login notification
sed -i '/termux-wake-lock/d' $PREFIX/etc/bash.bashrc
sed -i 's/$FS/' $PREFIX/etc/bash.bashrc
cat >> $PREFIX/etc/bash.bashrc << EOF
termux-wake-lock 
$FS
EOF

# Add support for uninstallation
cat > $PREFIX/bin/uninstall-$FS << EOF
#!/data/data/com.termux/files/usr/bin/bash

proot-distro remove $FS
sed -i '/echo "Login $NM Linux: $FS"/d' $PREFIX/etc/bash.bashrc
sed -i '/termux-wake-lock/d' $PREFIX/etc/bash.bashrc
rm -rf $PREFIX/bin/uninstall-$FS
rm -rf $PREFIX/bin/$FS
rm -rf $PREFIX/var/lib/proot-distro/dlcache/$FS.tar.xz
EOF
chmod 700 "$PREFIX/bin/uninstall-$FS"

# Move tarball to cache
mkdir -p "$PREFIX/var/lib/proot-distro/dlcache"
mv -f "$FS.tar.xz" "$PREFIX/var/lib/proot-distro/dlcache"

# Display final instructions
echo -e '\e[1;93m'
cat << EOF

To login ${NM} Linux, Type: $FS
EOF
echo " "
