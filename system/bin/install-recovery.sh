#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:34374990:52373c1703106f7a9122886f344fb1aa5af13c44; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27743562:374bfc2fe8bc09d0305bbebeb5ccae6df154ed89 EMMC:/dev/block/bootdevice/by-name/recovery 52373c1703106f7a9122886f344fb1aa5af13c44 34374990 374bfc2fe8bc09d0305bbebeb5ccae6df154ed89:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
