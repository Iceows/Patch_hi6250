#!/sbin/sh
	
	# Delete encryption properties
	sed -i '/ro.crypto.keyauth.enable=1/d' /system/build.prop;
	sed -i '/ro.crypto.keyauth.enable=1/d' /system/etc/prop.default;
	
    exit 0;
