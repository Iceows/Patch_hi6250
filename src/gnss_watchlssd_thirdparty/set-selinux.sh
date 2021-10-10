#!/sbin/sh

# Set owner and permissions
chmod 750 /system/xbin/gnss_watchlssd_thirdparty
chown gps:system /system/xbin/gnss_watchlssd_thirdparty

chmod 755 /system/bin/rw-system.sh
chown root:shell /system/bin/rw-system.sh

# set context
chcon -v u:object_r:phhsu_exec:s0 /system/bin/rw-system.sh

# Change context gnss_watchlssd binary and libraries
chcon -v u:object_r:hi110x_daemon_exec:s0 /system/xbin/gnss_watchlssd_thirdparty
chcon -v u:object_r:system_lib_file:s0 /system/system_ext/lib/libgnss_lss_gw_thirdparty.so
chcon -v u:object_r:system_lib_file:s0 /system/system_ext/lib64/libgnss_lss_gw_thirdparty.so


# set context gnss_watchlssd_thirdparty
echo "/system/xbin/gnss_watchlssd_thirdparty		u:object_r:hi110x_daemon_exec:s0" >> /system/etc/selinux/plat_file_contexts 


# fix system ntp_server (europe pool)
set global ntp_server europe.pool.ntp.org

exit 0
