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

#echo "(allow system_app hi110x_socket (sock_file (write)))" >> /vendor/etc/selinux/nonplat_sepolicy.cil
#echo "(allow system_app hi110x_daemon (unix_stream_socket (connectto)))" >> /vendor/etc/selinux/nonplat_sepolicy.cil
#echo "(allow system_app hi110x_daemon (unix_dgram_socket (sendto)))" >> /vendor/etc/selinux/nonplat_sepolicy.cil
#echo "(allow system_app hi110x_daemon (binder (transfer)))" >> /vendor/etc/selinux/nonplat_sepolicy.cil
#(allow hi110x_daemon system_data_root_file (dir (read)))
#(allow hi110x_daemon device (chr_file (ioctl read getattr lock open)))

# fix system ntp_server (europe pool)
set global ntp_server europe.pool.ntp.org

exit 0
