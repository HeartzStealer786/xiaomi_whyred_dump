#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:33887566:ef60cadcdc5adb5055b9cfa221989b971e68e2f3; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27731274:4a5c0ee357a0787aab8c1b6e8332336ce3d1e0ab EMMC:/dev/block/bootdevice/by-name/recovery ef60cadcdc5adb5055b9cfa221989b971e68e2f3 33887566 4a5c0ee357a0787aab8c1b6e8332336ce3d1e0ab:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
