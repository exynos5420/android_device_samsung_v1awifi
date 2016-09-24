#!/sbin/sh

set -e

modelid=`getprop ro.product.name`

if [ $modelid == "v2wifixx" ]; then
	mv /system/lib/hw/v2wifixx-sensors.universal5420.so /system/lib/hw/sensors.universal5420.so
else
	rm /system/lib/hw/v2wifixx-sensors.universal5420.so
fi

