#!/sbin/sh

	# Additional VARs
	SYSPERMDIRFILE=/system/etc/permissions/platform.xml
	BUILDPROP=/system/build.prop
	BUILDDEFAULT=/system/etc/prop.default
	
	# Edit perm file settings
	printf "1 - Edit perm setting \n" 
		
	# Check if property FUSE is setting in build.prop file
	printf "2 - Force to use sdcardfs \n"
	# User (build.prop)
	if grep -qs 'persist.sys.sdcardfs' $BUILDPROP; then
		sed -i 's/^persist.sys.sdcardfs=force_off/persist.sys.sdcardfs=force_on/' $BUILDPROP
	fi
	# Fallback device, use sdcardfs on Huawei
	if grep -qs 'ro.sys.sdcardfs' $BUILDPROP; then
		sed -i 's/^ro.sys.sdcardfs=false/ro.sys.sdcardfs=true/' $BUILDPROP
		sed -i 's/^ro.sys.sdcardfs=0/ro.sys.sdcardfs=true/' $BUILDPROP
	fi
		
	# User (prop.default)
	if grep -qs 'persist.sys.sdcardfs' $BUILDDEFAULT; then
		sed -i 's/^persist.sys.sdcardfs=force_off/persist.sys.sdcardfs=force_on/' $BUILDDEFAULT
	fi
	# Fallback device, use sdcardfs on Huawei
	if grep -qs 'ro.sys.sdcardfs' $BUILDDEFAULT; then
		sed -i 's/^ro.sys.sdcardfs=false/ro.sys.sdcardfs=true/' $BUILDDEFAULT
		sed -i 's/^ro.sys.sdcardfs=0/ro.sys.sdcardfs=true/' $BUILDDEFAULT
	fi
	
	# Huawei doesn't support esdfs filesystem
	printf "3 - Disabled esdfs \n"
	if grep -qs 'persist.esdfs_sdcard=true' $BUILDPROP; then
		sed -i 's/^persist.esdfs_sdcard=false' $BUILDPROP
	fi
	if grep -qs 'persist.esdfs_sdcard=true' $BUILDDEFAULT; then
		sed -i 's/^persist.esdfs_sdcard=false' $BUILDDEFAULT
	fi
	
    exit 0;
