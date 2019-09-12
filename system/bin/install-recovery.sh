#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:54629710:89d6a996db7397dd4e048535daa2c6eb23def32f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:52553034:5e6a64ea7342bb42fe4b2c2e498f53b32addb331 EMMC:/dev/block/bootdevice/by-name/recovery 89d6a996db7397dd4e048535daa2c6eb23def32f 54629710 5e6a64ea7342bb42fe4b2c2e498f53b32addb331:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
