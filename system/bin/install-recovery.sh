#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:33895758:eea2a3483564d8ed8e7294b5e1985670732386e7; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27739466:8635dd2a37cb049f04fb768f98cd050e56edc9a8 EMMC:/dev/block/bootdevice/by-name/recovery eea2a3483564d8ed8e7294b5e1985670732386e7 33895758 8635dd2a37cb049f04fb768f98cd050e56edc9a8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
