#!/sbin/sh


# -rw-r--r-- 1 root root u:object_r:system_file:s0  173376 2018-11-28 02:42 vendor.huawei.hardware.hwdisplay.displayengine@1.0.so

# Add type and mapping for displayengine-hal-1.0
echo "(typeattributeset hwservice_manager_type (displayengine_hwservice))" >> /system/etc/selinux/plat_sepolicy.cil
echo "(type displayengine_hwservice)" >> /system/etc/selinux/plat_sepolicy.cil
echo "(roletype object_r displayengine_hwservice)" >> /system/etc/selinux/plat_sepolicy.cil
echo "(typeattributeset displayengine_hwservice_26_0 (displayengine_hwservice))" >> /system/etc/selinux/mapping/26.0.cil

# Add allow  for displayengine-hal-1.0
# echo "(allow hal_displayengine_default displayengine_hwservice (hwservice_manager (add find)))" >> /vendor/etc/selinux/nonplat_sepolicy.cil

# Add allow vendor.lineage.livedisplay
echo "(allow system_server default_android_hwservice (hwservice_manager (find)))" >> /system/etc/selinux/plat_sepolicy.cil
echo "(allow system_server default_android_service (service_manager (add)))" >> /system/etc/selinux/plat_sepolicy.cil
echo "(allow system_server vendor_file (file (execute getattr map open read)))" >> /system/etc/selinux/plat_sepolicy.cil
echo "(allow system_app default_android_hwservice (hwservice_manager (find)))" >> /system/etc/selinux/plat_sepolicy.cil

exit 0
