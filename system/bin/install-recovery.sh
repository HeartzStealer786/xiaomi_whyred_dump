#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:33887566:602e899aec40bdb364343b87552e0b9b79dd1bee; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27727178:18f07a5e360557798d7247f70435e3db419419ef EMMC:/dev/block/bootdevice/by-name/recovery 602e899aec40bdb364343b87552e0b9b79dd1bee 33887566 18f07a5e360557798d7247f70435e3db419419ef:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
