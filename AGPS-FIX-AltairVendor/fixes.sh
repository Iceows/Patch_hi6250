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

# For lss 
sed -i '/(type alarm_device)/d' /system/etc/selinux/plat_sepolicy.cil
sed -i '/(roletype object_r alarm_device)/d'  /system/etc/selinux/plat_sepolicy.cil
sed -i '/(typeattributeset dev_type (device ashmem_device ashmem_libcutils_device audio_device binder_device hwbinder_device vndbinder_device block_device camera_device dm_device keychord_device loop_control_device loop_device pmsg_device radio_device ram_device rtc_device vold_device console_device fscklogs gpu_device graphics_device hw_random_device input_device port_device lowpan_device mtp_device nfc_device ptmx_device kmsg_device kmsg_debug_device null_device random_device secure_element_device sensors_device serial_device socket_device owntty_device tty_device video_device zero_device fuse_device iio_device ion_device qtaguid_device watchdog_device uhid_device uio_device tun_device usbaccessory_device usb_device usb_serial_device properties_device properties_serial property_info hci_attach_dev rpmsg_device root_block_device frp_block_device system_block_device recovery_block_device boot_block_device userdata_block_device cache_block_device swap_block_device metadata_block_device misc_block_device super_block_device sdcard_block_device ppp_device tee_device ))/d' /system/etc/selinux/plat_sepolicy.cil
sed -i '/(typeattributeset dev_type (device ashmem_device ashmem_libcutils_device audio_device binder_device hwbinder_device vndbinder_device block_device camera_device dm_device keychord_device loop_control_device loop_device pmsg_device radio_device ram_device rtc_device vold_device console_device fscklogs gpu_device graphics_device hw_random_device input_device port_device lowpan_device mtp_device nfc_device ptmx_device kmsg_device kmsg_debug_device null_device random_device secure_element_device sensors_device serial_device socket_device alarm_device owntty_device tty_device video_device zero_device fuse_device iio_device ion_device qtaguid_device watchdog_device uhid_device uio_device tun_device usbaccessory_device usb_device usb_serial_device properties_device properties_serial property_info hci_attach_dev rpmsg_device root_block_device frp_block_device system_block_device recovery_block_device boot_block_device userdata_block_device cache_block_device swap_block_device metadata_block_device misc_block_device super_block_device sdcard_block_device ppp_device tee_device ))/d' /system/etc/selinux/plat_sepolicy.cil
echo "(type alarm_device)" >> /system/etc/selinux/plat_sepolicy.cil
echo "(roletype object_r alarm_device)" >> /system/etc/selinux/plat_sepolicy.cil
echo "(typeattributeset dev_type (device ashmem_device ashmem_libcutils_device audio_device binder_device hwbinder_device vndbinder_device block_device camera_device dm_device keychord_device loop_control_device loop_device pmsg_device radio_device ram_device rtc_device vold_device console_device fscklogs gpu_device graphics_device hw_random_device input_device port_device lowpan_device mtp_device nfc_device ptmx_device kmsg_device kmsg_debug_device null_device random_device secure_element_device sensors_device serial_device socket_device alarm_device owntty_device tty_device video_device zero_device fuse_device iio_device ion_device qtaguid_device watchdog_device uhid_device uio_device tun_device usbaccessory_device usb_device usb_serial_device properties_device properties_serial property_info hci_attach_dev rpmsg_device root_block_device frp_block_device system_block_device recovery_block_device boot_block_device userdata_block_device cache_block_device swap_block_device metadata_block_device misc_block_device super_block_device sdcard_block_device ppp_device tee_device ))" >> /system/etc/selinux/plat_sepolicy.cil

sed -i '/u:object_r:alarm_device:s0/d' /system/etc/selinux/plat_file_contexts 
echo "/dev/alarm(/.*)?    u:object_r:alarm_device:s0" >> /system/etc/selinux/plat_file_contexts 

# For gnss_supl20service_hisi.apk (old version)
echo "(allow system_app hi110x_daemon (unix_stream_socket (connectto)))" >> /system/etc/selinux/plat_sepolicy.cil
echo "(allow hi110x_daemon socket_device (dir (write)))" >> /system/etc/selinux/plat_sepolicy.cil

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
