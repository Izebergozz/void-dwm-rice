# == VOID SETUP INSTALLER == #
#part1
# PRECONF 
printf '\033c'
echo "Welcome to my void installer script"

#sed -i "s/^#ParallelDownloads = 5$/Parallelownloads = 15/" /etc/pacman.conf

#pacman --noconfirm -Sy archlinux-keyring
loadkeys us
#timedatectl set-ntp true
lsblk

# PARTITION
echo "Enter the drive:"
read drive
cfdisk $drive
echo "Enter the root partition:"
read partition 
mkfs.ext4 $partition
echo "Enter EFI partition: "
read efipartition
mkfs.vfat -F 32 $efipartition
mount $partition /mnt/
mkdir -p /mnt/boot/efi/
mount $efipartition /mnt/boot/efi/

# XBPS #
printf '\033c'
#echo "glibc, musl or aarch64"
#read REPO
#echo "i686 or x86_64?"
#read ARCH
REPO=https://repo-default.voidlinux.org/current
ARCH=x86_64
mkdir -p /mnt/var/db/xbps/keys
cp /var/db/xbps/keys/* /mnt/var/db/xbps/keys/
XBPS_ARCH=$ARCH xbps-install -S -r /mnt -R "$REPO" base-system

# CHROOT #
printf '\033c'
cd /mnt
mkdir sys
mkdir dev
mkdir proc 
mkdir etc
mount --rbind /sys /mnt/sys && mount --make-rslave /mnt/sys
mount --rbind /dev /mnt/dev && mount --make-rslave /mnt/dev
mount --rbind /proc /mnt/proc && mount --make-rslave /mnt/proc
cp /etc/resolv.conf /mnt/etc/

sed '1,/^#part2$/d' `basename $0` > /mnt/void_install2.sh
chmod +x /mnt/void_install2.sh
PS1='(chroot) # ' chroot /mnt/ /bin/bash ./void_install2.sh
exit 

#part2
# INSTALL BASE-SYSTEM #
printf '\033c'
ln -sf /usr/share/zoneinfo/Asia/Barnaul /etc/localtime
hwclock --systohc
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
#locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "KEYMAP=us" > /etc/vconsole.conf
echo "Hostname: "
read hostname
echo $hostname > /etc/hostname
rm -rf /etc/hosts
echo "127.0.0.1       localhost" >> /etc/hosts
echo "::1             localhost" >> /etc/hosts
echo "127.0.1.1       $hostname.localdomain $hostname" >> /etc/hosts
passwd
#xbps-install -Su xbps
#xbps-install -u
#xbps-install base-system
#xbps-remove base-voidstrap
vim /etc/default/libc-locales
xbps-reconfigure -f glibc-locales
cp /proc/mounts /etc/fstab
vim /etc/fstab

# GRUB-INSTALL #
xbps-install grub-x86_64-efi
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id="Void"

# POST-INSTALATION #
xbps-install -Syu base-devel brightnessctl pipewire alsa-pipewire libjack-pipewire wireplumber gimp alacritty dmenu picom \
neofetch feh pywal neovim libXinerama-devel libXft-devel xsetroot lm_sensors nerd-fonts-ttf \

# FINALIZATION #

xbps-reconfigure -fa
exit
shutdown -r now
