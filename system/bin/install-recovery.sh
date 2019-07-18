#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:33903950:6c9a67558de8388fe7d707e84a61de21f80387c0; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27731274:dc3461c1f5ccfb3927b8ba3c15075b310503ca1c EMMC:/dev/block/bootdevice/by-name/recovery 6c9a67558de8388fe7d707e84a61de21f80387c0 33903950 dc3461c1f5ccfb3927b8ba3c15075b310503ca1c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
