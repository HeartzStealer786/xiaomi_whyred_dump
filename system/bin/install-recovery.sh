#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:34370894:246c5b3aaecd206d07319eb3c52510bcb15afe2a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27739466:d64b832135def11941abbc21732b6de97e5fdeac EMMC:/dev/block/bootdevice/by-name/recovery 246c5b3aaecd206d07319eb3c52510bcb15afe2a 34370894 d64b832135def11941abbc21732b6de97e5fdeac:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
