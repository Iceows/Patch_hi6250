#!/sbin/sh

# Set owner and permissions
chmod 750 /system/xbin/gnss_watchlssd_thirdparty
chown gps:system /system/xbin/gnss_watchlssd_thirdparty

#chmod 755 /system/bin/rw-system.sh
#chown root:shell /system/bin/rw-system.sh
# set context
# chcon -v u:object_r:phhsu_exec:s0 /system/bin/rw-system.sh

# -rw-r--r--
chmod 644 /vendor/lib/libshims_hisupl.so
chmod 644 /vendor/lib64/libshims_hisupl.so

chcon -v u:object_r:hi110x_daemon_exec:s0 /system/xbin/gnss_watchlssd_thirdparty
chcon -v u:object_r:system_lib_file:s0 /system/system_ext/lib/libgnss_lss_gw_thirdparty.so
chcon -v u:object_r:system_lib_file:s0 /system/system_ext/lib64/libgnss_lss_gw_thirdparty.so

chcon -v u:object_r:vendor_file:s0 /vendor/lib/libshims_hisupl.so
chcon -v u:object_r:vendor_file:s0 /vendor/lib64/libshims_hisupl.so

# For gnss_lss
echo "/system/xbin/gnss_watchlssd_thirdparty		u:object_r:hi110x_daemon_exec:s0" >> /system/etc/selinux/plat_file_contexts 
echo "(allow hi110x_daemon hi110x_daemon (fifo_file (ioctl read write create getattr setattr lock append unlink rename open)))" >> /system/etc/selinux/plat_sepolicy.cil

# For gnss_supl20service_hisi.apk
echo "(allow system_app hi110x_daemon (unix_stream_socket (connectto)))" >> /system/etc/selinux/plat_sepolicy.cil

# To allow shim lib
echo "(allow init domain (process (signal noatsecure)))" >> /system/etc/selinux/plat_sepolicy.cil


# fix system ntp_server (europe pool)
set global ntp_server europe.pool.ntp.org

# allow agps an set config
echo "persist.sys.pgps.config=1"   >> /system/etc/prop.default;
echo "assisted_gps_enabled=1"   >> /system/etc/prop.default;

echo "ro.hardware.hisupl=hi1102"  >> /system/etc/prop.default;

# Uncomment to Debug GPS
#	echo "log.tag.GnssConfiguration=DEBUG" >> /system/etc/prop.default;
#	echo "log.tag.GnssLocationProvider=DEBUG" >> /system/etc/prop.default;
#	echo "log.tag.GnssManagerService=DEBUG" >> /system/etc/prop.default;
#	echo "log.tag.NtpTimeHelper=DEBUG" >> /system/etc/prop.default;

exit 0
