#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:33838414:a052697dd13b5c81aef8627e6758a013bd68b528; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27678026:583fe3b6fc5d03ea48e7d33616fb769a0bacbc69 EMMC:/dev/block/bootdevice/by-name/recovery a052697dd13b5c81aef8627e6758a013bd68b528 33838414 583fe3b6fc5d03ea48e7d33616fb769a0bacbc69:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
