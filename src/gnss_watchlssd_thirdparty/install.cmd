REM Modifie init.connectivity.hi1102.rc pour rajouter un service
adb push init.connectivity.hi1102.rc /vendor/etc/init/connectivity/

REM Met a jour rw-system.sh
adb push rw-system.sh /system/bin/rw-system.sh
adb shell chcon u:object_r:phhsu_exec:s0  /system/bin/rw-system.sh
