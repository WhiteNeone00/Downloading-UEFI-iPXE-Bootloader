clear
echo "Downloading UEFI iPXE Bootloader"
cd /boot/efi/EFI/ubuntu
mv grubaa64.efi a.efi
wget -O grubaa64.efi https://boot.netboot.xyz/ipxe/netboot.xyz.efi
cd
umount /boot/efi
mount /dev/$(lsblk -lf | grep sda | grep vfat | awk '{print $1}') /boot/efi
