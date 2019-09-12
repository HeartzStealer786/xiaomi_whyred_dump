#!/system/bin/sh
iwpriv softap0 setTxMaxPower 7
sleep 2
setprop persist.sys.wifisarnear 0
exit 0
