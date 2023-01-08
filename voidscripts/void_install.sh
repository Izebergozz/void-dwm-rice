# == VOID SETUP INSTALLER == #
# PRECONF 
# printf '\033c'
echo "Welcome to my void installer script"

#sed -i "s/^#ParallelDownloads = 5$/Parallelownloads = 15/" /etc/pacman.conf

#pacman --noconfirm -Sy archlinux-keyring
#loadkeys us
#timedatectl set-ntp true
#lsblk

# PARTITION
#echo "Enter the drive:"
#read drive
#cfdisk $drive
#echo "Enter the root partition:"
#reaf partition 
#mkdf.ext4 $partition
#read -p "Did you also create efi partition? [y/n]" answer
#if [[ $answer = y]] ; then
#	echo "Enter EFI partition: "
#	read efipartition
#	mkfs.vfat -F 32 $efipartition
#	mkdir -p /mnt/boot/efi
#	mount $efipartition /mnt/boot/efi/
#fi
#mount $partition /mnt

# BASE INSTALL 
#printf '\033c'
#ln -sf /usr/share/zoneinfo/Asia/Barnaul /etc/localtime hwclock --systohc
#echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
#locale-gen
#echo "LANG=en_US.UTF-8" > /etc/locale.conf
#echo "Hostname: "
#read hostname 
#echo $hostname > /etc/hostname
#echo "127.0.0.1	localhost" >> /etc/hosts
#echo "::1	localhost" >> /etc/hosts
#echo "127.0.1.1	$hostname.localdomain $hostname" >> /etc/hosts
#passwd 
#xbps-install -Syu
#xbps-install -u xbps
#xbps-install -Syu
#
#
#mkdir -p /mnt/var/db/xbps/keys
#cp /var/db/xbps/keys/* /mnt/var/db/xbps/keys/
#XBPS_ARCH=$ARCH xbps-install -S -r /mnt -R "$REPO" base-system
# CHROOT
# mount --rbind /sys /mnt/sys && mount --make-rslave /mnt/sys
# mount --rbind /dev /mnt/dev && mount --make-rslave /mnt/dev
# mount --rbind /proc /mnt/proc && mount --make-rslave /mnt/proc
# cp /etc/resolv.conf /mnt/etc/
# PS-1='(chroot) # ' chroot /mnt/ /bin/bash
