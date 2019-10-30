#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:33895758:19dab44d8fdfdd0c60d5bbb6c44d644c61eda081; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27739466:0a4219d2c183843cf0bb0247204bd3f7e5707cba EMMC:/dev/block/bootdevice/by-name/recovery 19dab44d8fdfdd0c60d5bbb6c44d644c61eda081 33895758 0a4219d2c183843cf0bb0247204bd3f7e5707cba:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
