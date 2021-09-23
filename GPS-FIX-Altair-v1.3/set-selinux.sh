#!/sbin/sh

# Set owner and permissions
chmod 750 /vendor/xbin/gnss_watchlssd_thirdparty
chown gps:system /vendor/xbin/gnss_watchlssd_thirdparty

# change context for file
chcon -v u:object_r:hi110x_daemon_exec:s0 /vendor/xbin/gnss_watchlssd_thirdparty
chcon -v u:object_r:hi110x_daemon_exec:s0 /system/vendor/xbin/gnss_watchlssd_thirdparty

# fix system ntp_server (europe pool)
set global ntp_server europe.pool.ntp.org

# Restore default contexte
#restorecon -v /vendor/xbin/gnss_watchlssd_thirdparty
#restorecon -v /system/vendor/xbin/gnss_watchlssd_thirdparty

exit 0
