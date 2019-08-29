#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:34374990:c9795e161320cded463bc84d912684f5e75e831e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27743562:ea49da4b47e1ba7f04490aff17c1763a02b9b3ee EMMC:/dev/block/bootdevice/by-name/recovery c9795e161320cded463bc84d912684f5e75e831e 34374990 ea49da4b47e1ba7f04490aff17c1763a02b9b3ee:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
