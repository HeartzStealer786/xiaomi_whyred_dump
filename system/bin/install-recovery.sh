#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:33887566:ca207c582d367739c6335a00035ece3e8a623dad; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27731274:3c7565e39d0f0200ad26797a1c46c31f977990ac EMMC:/dev/block/bootdevice/by-name/recovery ca207c582d367739c6335a00035ece3e8a623dad 33887566 3c7565e39d0f0200ad26797a1c46c31f977990ac:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
