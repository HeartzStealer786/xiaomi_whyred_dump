#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:33899854:207efd39b623406d71a3a381c333a94171fee71d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27731274:af171ba40f81e423b690c9c10dd4faebbfb68fb5 EMMC:/dev/block/bootdevice/by-name/recovery 207efd39b623406d71a3a381c333a94171fee71d 33899854 af171ba40f81e423b690c9c10dd4faebbfb68fb5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
