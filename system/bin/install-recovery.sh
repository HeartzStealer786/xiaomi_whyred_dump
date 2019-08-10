#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:34370894:7ef037ebb76ae6b614d397cd8ff03a9000542972; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27739466:a52c52bf382d07f85fbfb3f190b8d54e349860a9 EMMC:/dev/block/bootdevice/by-name/recovery 7ef037ebb76ae6b614d397cd8ff03a9000542972 34370894 a52c52bf382d07f85fbfb3f190b8d54e349860a9:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
