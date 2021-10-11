#!/sbin/sh

# -rwxr-xr-x
chmod 755 /system/bin/displayengineserver
chown root:shell /system/bin/displayengineserver

chcon -v u:object_r:displayengineserver_exec:s0 /system/bin/displayengineserver

# -rw-r--r-- 1 root root u:object_r:system_file:s0  173376 2018-11-28 02:42 vendor.huawei.hardware.hwdisplay.displayengine@1.0.so

# Add type and mapping for displayengine-hal-1.0
echo "(typeattributeset hwservice_manager_type (displayengine_hwservice))" >> /system/etc/selinux/plat_sepolicy.cil
echo "(type displayengine_hwservice)" >> /system/etc/selinux/plat_sepolicy.cil
echo "(roletype object_r displayengine_hwservice)" >> /system/etc/selinux/plat_sepolicy.cil
echo "(typeattributeset displayengine_hwservice_26_0 (displayengine_hwservice))" >> /system/etc/selinux/mapping/26.0.cil

# Add allow  for displayengine-hal-1.0
echo "((allow hal_displayengine_default displayengine_hwservice (hwservice_manager (add find)))" >> /vendor/etc/selinux/nonplat_sepolicy.cil

exit 0
