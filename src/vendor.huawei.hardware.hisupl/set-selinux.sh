#!/sbin/sh

# -rw-r--r--
chmod 644 /vendor/lib/libshims_hisupl.so
chmod 644 /vendor/lib64/libshims_hisupl.so

chcon -v u:object_r:vendor_file:s0 /vendor/lib/libshims_hisupl.so
chcon -v u:object_r:vendor_file:s0 /vendor/lib64/libshims_hisupl.so

# To allow shim lib
echo "(allow init domain (process (signal noatsecure)))" >> /system/etc/selinux/plat_sepolicy.cil

exit 0
