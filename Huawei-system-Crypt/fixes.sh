#!/sbin/sh

	
	# Iceows crypto by software key authentification
	echo "ro.crypto.keyauth.enable=1" >> /system/build.prop;
	echo "ro.crypto.keyauth.enable=1" >> /system/etc/prop.default;

    exit 0;
