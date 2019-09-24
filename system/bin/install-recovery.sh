#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:34374990:24a80abd16e930b9ac598c05f03cdd0d58cf662c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27743562:79cfece0e09aafce24ac13361b5a0acfc6bd147f EMMC:/dev/block/bootdevice/by-name/recovery 24a80abd16e930b9ac598c05f03cdd0d58cf662c 34374990 79cfece0e09aafce24ac13361b5a0acfc6bd147f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
