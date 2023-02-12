#!/sbin/sh
mkdir /dev/block/redirect

dd if=/dev/block/bootloader of=/dev/block/redirect/bootloader_decoy

rm /dev/block/bootloader
rm /dev/block/mmcblk0boot0
rm /dev/block/mmcblk0boot1
rm /dev/block/mmcblk0rpmb
rm /dev/block/misc

ln -s /dev/block/redirect/bootloader_decoy /dev/block/bootloader
ln -s /dev/block/redirect/bootloader_decoy /dev/block/mmcblk0boot0
ln -s /dev/block/redirect/bootloader_decoy /dev/block/mmcblk0boot1
ln -s /dev/block/redirect/bootloader_decoy /dev/block/mmcblk0rpmb
ln -s /dev/null /dev/block/misc
