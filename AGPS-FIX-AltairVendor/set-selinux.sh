#!/sbin/sh

# Set owner and permissions
chmod 750 /system/xbin/gnss_watchlssd_thirdparty
chown gps:system /system/xbin/gnss_watchlssd_thirdparty

#chmod 755 /system/bin/rw-system.sh
#chown root:shell /system/bin/rw-system.sh

# -rwxr-xr-x
#chmod 755 /system/bin/displayengineserver
#chown root:shell /system/bin/displayengineserver

# set context
# chcon -v u:object_r:phhsu_exec:s0 /system/bin/rw-system.sh

# -rw-r--r--
chmod 644 /vendor/lib/libshims_hisupl.so
chmod 644 /vendor/lib64/libshims_hisupl.so

chcon -v u:object_r:hi110x_daemon_exec:s0 /system/xbin/gnss_watchlssd_thirdparty
chcon -v u:object_r:system_lib_file:s0 /system/system_ext/lib/libgnss_lss_gw_thirdparty.so
chcon -v u:object_r:system_lib_file:s0 /system/system_ext/lib64/libgnss_lss_gw_thirdparty.so

#chcon -v u:object_r:displayengineserver_exec:s0 /system/bin/displayengineserver

# -rw-r--r-- 1 root root u:object_r:system_file:s0  173376 2018-11-28 02:42 vendor.huawei.hardware.hwdisplay.displayengine@1.0.so
#chcon -v u:object_r:system_file:s0 /system/lib64/vendor.huawei.hardware.hisupl@1.0
#chcon -v u:object_r:system_file:s0 /system/lib64/vendor.huawei.hardware.hisupl@1.0-impl.so
#chcon -v u:object_r:system_file:s0 /system/lib64/hisupl.hi1102.default.so
#chcon -v u:object_r:system_file:s0 /system/lib/vendor.huawei.hardware.hisupl@1.0.so
#chcon -v u:object_r:system_file:s0 /system/lib/hisupl.hi1102.default.so

#chcon -v u:object_r:system_lib_file:s0 /system/lib/libshims_hisupl.so
#chcon -v u:object_r:system_lib_file:s0 /system/lib64/libshims_hisupl.so

chcon -v u:object_r:vendor_file:s0 /vendor/lib/libshims_hisupl.so
chcon -v u:object_r:vendor_file:s0 /vendor/lib64/libshims_hisupl.so

# For gnss_lss
echo "/system/xbin/gnss_watchlssd_thirdparty		u:object_r:hi110x_daemon_exec:s0" >> /system/etc/selinux/plat_file_contexts 
echo "(allow hi110x_daemon hi110x_daemon (fifo_file (ioctl read write create getattr setattr lock append unlink rename open)))" >> /system/etc/selinux/plat_sepolicy.cil
# To allow shim lib
echo "(allow init domain (process (signal noatsecure)))" >> /system/etc/selinux/plat_sepolicy.cil


# fix system ntp_server (europe pool)
set global ntp_server europe.pool.ntp.org

# Restore default contexte
#restorecon -v /system/xbin/gnss_watchlssd_thirdparty

exit 0
