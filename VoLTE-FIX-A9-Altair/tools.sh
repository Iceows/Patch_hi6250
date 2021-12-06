#!/sbin/sh

	chmod 644 /system/overlay/treble-overlay-hw-ims.apk
	restorecon /system/overlay/treble-overlay-hw-ims.apk


    echo " " >> /system/build.prop;
    echo "# Ims" >> /system/build.prop;
    echo "persist.sys.phh.ims.hw=true" >> /system/build.prop;
    echo "persist.dbg.ims_volte_enable=1" >> /system/build.prop;
    echo "persist.dbg.volte_avail_ovr=1" >> /system/build.prop;
    echo "persist.dbg.vt_avail_ovr=1" >> /system/build.prop;
    echo "persist.dbg.wfc_avail_ovr=1" >> /system/build.prop;
    echo "persist.data.iwlan.enable=true" >> /system/build.prop;
    echo "persist.radio.rat_on=combine" >> /system/build.prop;
    echo "persist.radio.data_ltd_sys_ind=1" >> /system/build.prop;
    echo "persist.radio.data_con_rprt=1" >> /system/build.prop;
    echo "persist.radio.calls.on.ims=1" >> /system/build.prop;

    echo " " >> /system/product/etc/prop/local.prop;
    echo "# Ims" >> /system/product/etc/prop/local.prop;
    echo "persist.sys.phh.ims.hw=true" >> /system/product/etc/prop/local.prop;
	
    echo "persist.dbg.ims_volte_enable=1" >> /system/product/etc/prop/local.prop;
    echo "persist.dbg.volte_avail_ovr=1" >> /system/product/etc/prop/local.prop;
    echo "persist.dbg.vt_avail_ovr=1" >> /system/product/etc/prop/local.prop;
    echo "persist.dbg.wfc_avail_ovr=1" >> /system/product/etc/prop/local.prop;
	
    echo "persist.data.iwlan.enable=true" >> /system/product/etc/prop/local.prop;
    echo "persist.radio.rat_on=combine" >> /system/product/etc/prop/local.prop;
    echo "persist.radio.data_ltd_sys_ind=1" >> /system/product/etc/prop/local.prop;
    echo "persist.radio.data_con_rprt=1" >> /system/product/etc/prop/local.prop;
    echo "persist.radio.calls.on.ims=1" >> /system/product/etc/prop/local.prop;

    exit 0;
