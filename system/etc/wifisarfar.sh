#!/system/bin/sh
iwpriv softap0 setTxMaxPower 19
sleep 2
setprop persist.sys.wifisarfar 0
exit 0
