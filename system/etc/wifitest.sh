#!/system/bin/sh
rmmod wlan
sleep 2
insmod /system/lib/modules/wlan.ko
sleep 3
ifconfig wlan0 up
sleep 2
echo 5 > /sys/module/wlan/parameters/con_mode
sleep 1
setprop persist.sys.wifiFtmdaemon 1
sleep 1
setprop persist.sys.openwifi_L 0
exit 0

