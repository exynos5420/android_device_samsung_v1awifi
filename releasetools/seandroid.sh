#!/sbin/sh
ui_print "Getting boot.img..."
busybox dd if=/dev/block/platform/dw_mmc.0/by-name/BOOT of=/tmp/boot.img
ui_print "Patching boot.img..."
echo "SEANDROIDENFORCE" >> /tmp/boot.img
ui_print "Flashing boot.img..."
busybox dd if=/tmp/boot.img of=/dev/block/platform/dw_mmc.0/by-name/BOOT
exit 0
