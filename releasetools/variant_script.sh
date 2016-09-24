#!/sbin/sh

set -e

modelid=`getprop ro.product.name`

if [ $modelid == "v2wifixx" ]; then
	mv /system/lib/hw/v2wifixx-sensors.universal5420.so /system/lib/hw/sensors.universal5420.so
	echo "SM-T900 rotation driver installed"
else
	rm /system/lib/hw/v2wifixx-sensors.universal5420.so
	echo "SM-P900 rotation driver installed"
fi

