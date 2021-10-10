#!/system/bin/sh

if [ -z "$debug" ] && [ -f /cache/phh-log ];then
	mkdir -p /cache/phh
	debug=1 exec sh -x "$(readlink -f -- "$0")" > /cache/phh/logs 2>&1
else
    # Allow accessing logs from system app
    # Protected via SELinux for other apps
    chmod 0755 /cache/phh
    chmod 0644 /cache/phh/logs
fi

vndk="$(getprop persist.sys.vndk)"
[ -z "$vndk" ] && vndk="$(getprop ro.vndk.version |grep -oE '^[0-9]+')"

if [ "$vndk" = 26 ];then
	resetprop_phh ro.vndk.version 26
fi

setprop sys.usb.ffs.aio_compat true
setprop persist.adb.nonblocking_ffs false

fixSPL() {
    if [ "$(getprop ro.product.cpu.abi)" = "armeabi-v7a" ]; then
        setprop ro.keymaster.mod 'AOSP on ARM32'
    else
        setprop ro.keymaster.mod 'AOSP on ARM64'
    fi
    img="$(find /dev/block -type l -iname kernel"$(getprop ro.boot.slot_suffix)" | grep by-name | head -n 1)"
    [ -z "$img" ] && img="$(find /dev/block -type l -iname boot"$(getprop ro.boot.slot_suffix)" | grep by-name | head -n 1)"
    if [ -n "$img" ]; then
        #Rewrite SPL/Android version if needed
        Arelease="$(getSPL "$img" android)"
        setprop ro.keymaster.xxx.release "$Arelease"
        setprop ro.keymaster.xxx.security_patch "$(getSPL "$img" spl)"
        setprop ro.keymaster.brn Android

        if getprop ro.vendor.build.fingerprint |grep -qiE 'samsung.*star.*lte';then
            additional="/apex/com.android.vndk.v28/lib64/libsoftkeymasterdevice.so /apex/com.android.vndk.v29/lib64/libsoftkeymasterdevice.so"
        else
            getprop ro.vendor.build.fingerprint | grep -qiE '^samsung/' && return 0
        fi
        for f in \
            /vendor/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so /vendor/lib/hw/android.hardware.keymaster@3.0-impl-qti.so \
            /system/lib64/vndk-26/libsoftkeymasterdevice.so /vendor/bin/teed \
            /apex/com.android.vndk.v26/lib/libsoftkeymasterdevice.so  \
            /apex/com.android.vndk.v26/lib64/libsoftkeymasterdevice.so  \
            /system/lib64/vndk/libsoftkeymasterdevice.so /system/lib/vndk/libsoftkeymasterdevice.so \
            /system/lib/vndk-26/libsoftkeymasterdevice.so \
            /system/lib/vndk-27/libsoftkeymasterdevice.so /system/lib64/vndk-27/libsoftkeymasterdevice.so \
	    /vendor/lib/libkeymaster3device.so /vendor/lib64/libkeymaster3device.so \
        /vendor/lib/libMcTeeKeymaster.so /vendor/lib64/libMcTeeKeymaster.so \
        /vendor/lib/hw/libMcTeeKeymaster.so /vendor/lib64/hw/libMcTeeKeymaster.so $additional; do
            [ ! -f "$f" ] && continue
            # shellcheck disable=SC2010
            ctxt="$(ls -lZ "$f" | grep -oE 'u:object_r:[^:]*:s0')"
            b="$(echo "$f" | tr / _)"

            cp -a "$f" "/mnt/phh/$b"
            sed -i \
                -e 's/ro.build.version.release/ro.keymaster.xxx.release/g' \
                -e 's/ro.build.version.security_patch/ro.keymaster.xxx.security_patch/g' \
                -e 's/ro.product.model/ro.keymaster.mod/g' \
                -e 's/ro.product.brand/ro.keymaster.brn/g' \
                "/mnt/phh/$b"
            chcon "$ctxt" "/mnt/phh/$b"
            mount -o bind "/mnt/phh/$b" "$f"
        done
        if [ "$(getprop init.svc.keymaster-3-0)" = "running" ]; then
            setprop ctl.restart keymaster-3-0
        fi
        if [ "$(getprop init.svc.teed)" = "running" ]; then
            setprop ctl.restart teed
        fi
    fi
}

changeKeylayout() {
    cp -a /system/usr/keylayout /mnt/phh/keylayout
    changed=false
    if grep -q vendor.huawei.hardware.biometrics.fingerprint /vendor/etc/vintf/manifest.xml; then
        changed=true
        cp /system/phh/huawei/fingerprint.kl /mnt/phh/keylayout/fingerprint.kl
        chmod 0644 /mnt/phh/keylayout/fingerprint.kl
    fi

    if [ "$changed" = true ]; then
        mount -o bind /mnt/phh/keylayout /system/usr/keylayout
        restorecon -R /system/usr/keylayout
    fi
}

if mount -o remount,rw /system; then
    resize2fs "$(grep ' /system ' /proc/mounts | cut -d ' ' -f 1)" || true
else
    remount system
    mount -o remount,rw /
    major="$(stat -c '%D' /.|sed -E 's/^([0-9a-f]+)([0-9a-f]{2})$/\1/g')"
    minor="$(stat -c '%D' /.|sed -E 's/^([0-9a-f]+)([0-9a-f]{2})$/\2/g')"
    mknod /dev/tmp-phh b $((0x$major)) $((0x$minor))
    resize2fs /dev/root || true
    resize2fs /dev/tmp-phh || true
fi
mount -o remount,ro /system || true
mount -o remount,ro / || true

mkdir -p /mnt/phh/
mount -t tmpfs -o rw,nodev,relatime,mode=755,gid=0 none /mnt/phh || true
mkdir /mnt/phh/empty_dir
fixSPL

changeKeylayout

if grep vendor.huawei.hardware.biometrics.fingerprint /vendor/manifest.xml; then
    mount -o bind system/phh/huawei/fingerprint.kl /vendor/usr/keylayout/fingerprint.kl
fi

foundFingerprint=false
for manifest in /vendor/manifest.xml /vendor/etc/vintf/manifest.xml /odm/etc/vintf/manifest.xml;do
    if grep -q -e android.hardware.biometrics.fingerprint $manifest;then
        foundFingerprint=true
    fi
done

if [ "$foundFingerprint" = false ];then
    mount -o bind system/phh/empty /system/etc/permissions/android.hardware.fingerprint.xml
fi

if ! grep android.hardware.bluetooth /vendor/manifest.xml && ! grep android.hardware.bluetooth /vendor/etc/vintf/manifest.xml; then
    mount -o bind system/phh/empty /system/etc/permissions/android.hardware.bluetooth.xml
    mount -o bind system/phh/empty /system/etc/permissions/android.hardware.bluetooth_le.xml
fi

if grep -qF 'mkdir /data/.fps 0770 system fingerp' vendor/etc/init/hw/init.mmi.rc; then
    mkdir -p /data/.fps
    chmod 0770 /data/.fps
    chown system:9015 /data/.fps

    chown system:9015 /sys/devices/soc/soc:fpc_fpc1020/irq
    chown system:9015 /sys/devices/soc/soc:fpc_fpc1020/irq_cnt
fi

mount -o bind /system/phh/empty /vendor/lib/libpdx_default_transport.so
mount -o bind /system/phh/empty /vendor/lib64/libpdx_default_transport.so

mount -o bind /system/phh/empty /vendor/overlay/SysuiDarkTheme/SysuiDarkTheme.apk || true
mount -o bind /system/phh/empty /vendor/overlay/SysuiDarkTheme/SysuiDarkThemeOverlay.apk || true

if [ "$vndk" = 27 ] || [ "$vndk" = 26 ]; then
    mount -o bind /system/phh/libnfc-nci-oreo.conf /system/etc/libnfc-nci.conf
fi

if busybox_phh unzip -p /vendor/app/ims/ims.apk classes.dex | grep -qF -e Landroid/telephony/ims/feature/MmTelFeature -e Landroid/telephony/ims/feature/MMTelFeature; then
    mount -o bind /system/phh/empty /vendor/app/ims/ims.apk
fi

#                  
# System Properties
#
#
# Props are being read only if they are set at every boot
# using setprop
#

# Audio
setprop audio.deep_buffer.media true

# Display
setprop ro.surface_flinger.running_without_sync_framework true

# Graphics
setprop debug.egl.hw 1
setprop debug.egl.profiler 1 
setprop debug.hwui.use_buffer_age false 
setprop debug.performance.tuning 1 
setprop debug.sf.hw 1
setprop hwui.disable_vsync true 
setprop ro.config.enable.hw_accel true 
setprop video.accelerate.hw 1
setprop debug.sf.latch_unsignaled 1
setprop persist.sys.sf.native_mode 1
setprop persist.sys.sf.color_mode 1.0
setprop persist.sys.sf.color_saturation 1.1
setprop ro.surface_flinger.max_frame_buffer_acquired_buffers 3
setprop debug.cpurend.vsync false

# Usb
setprop persist.sys.usb.config hisuite,mtp,mass_storage
setprop sys.usb.config mtp
setprop sys.usb.configfs 1
setprop sys.usb.controller hisi-usb-otg
setprop sys.usb.ffs.aio_compat true
setprop sys.usb.ffs.ready 0
setprop sys.usb.ffs_hdb.ready 0
setprop sys.usb.state mtp,adb

#
# End System Properties
#

if getprop ro.vendor.build.fingerprint | grep -iq -E -e 'huawei|honor' || getprop persist.sys.overlay.huawei | grep -iq -E -e 'true'; then
    p=/product/etc/nfc/libnfc_nxp_*_*.conf
    mount -o bind "$p" /system/etc/libnfc-nxp.conf ||
        mount -o bind /product/etc/libnfc-nxp.conf /system/etc/libnfc-nxp.conf || true

    p=/product/etc/nfc/libnfc_brcm_*_*.conf
    mount -o bind "$p" /system/etc/libnfc-brcm.conf ||
        mount -o bind /product/etc/libnfc-nxp.conf /system/etc/libnfc-nxp.conf || true

    mount -o bind /system/phh/libnfc-nci-huawei.conf /system/etc/libnfc-nci.conf
fi

# Disable this binary to fix logspams and dead gps
mount -o bind /system/phh/empty /vendor/bin/gnss_watchlssd_thirdparty
mount -o bind /mnt/phh/empty_dir /vendor/etc/audio || true

# Restore old rild behavior
setprop persist.sys.phh.sdk_override /vendor/bin/hw/rild=27

if [ -n "$(getprop ro.boot.product.hardware.sku)" ] && [ -z "$(getprop ro.hw.oemName)" ];then
	setprop ro.hw.oemName "$(getprop ro.boot.product.hardware.sku)"
fi

if [ -f /system/phh/secure ];then
    copyprop() {
        p="$(getprop "$2")"
        if [ "$p" ]; then
            resetprop_phh "$1" "$(getprop "$2")"
        fi
    }

    setprop ctl.stop console
    dmesg -n 1
    copyprop ro.build.device ro.vendor.build.device
    copyprop ro.system.build.fingerprint ro.vendor.build.fingerprint
    copyprop ro.bootimage.build.fingerprint ro.vendor.build.fingerprint
    copyprop ro.build.fingerprint ro.vendor.build.fingerprint
    copyprop ro.build.device ro.vendor.product.device
    copyprop ro.product.system.device ro.vendor.product.device
    copyprop ro.product.device ro.vendor.product.device
    copyprop ro.product.system.device ro.product.vendor.device
    copyprop ro.product.device ro.product.vendor.device
    copyprop ro.product.system.name ro.vendor.product.name
    copyprop ro.product.name ro.vendor.product.name
    copyprop ro.product.system.name ro.product.vendor.device
    copyprop ro.product.name ro.product.vendor.device
    copyprop ro.system.product.brand ro.vendor.product.brand
    copyprop ro.product.brand ro.vendor.product.brand
    copyprop ro.product.system.model ro.vendor.product.model
    copyprop ro.product.model ro.vendor.product.model
    copyprop ro.product.system.model ro.product.vendor.model
    copyprop ro.product.model ro.product.vendor.model
    copyprop ro.build.product ro.vendor.product.model
    copyprop ro.build.product ro.product.vendor.model
    copyprop ro.system.product.manufacturer ro.vendor.product.manufacturer
    copyprop ro.product.manufacturer ro.vendor.product.manufacturer
    copyprop ro.system.product.manufacturer ro.product.vendor.manufacturer
    copyprop ro.product.manufacturer ro.product.vendor.manufacturer
    (getprop ro.vendor.build.security_patch; getprop ro.keymaster.xxx.security_patch) |sort |tail -n 1 |while read v;do
        [ -n "$v" ] && resetprop_phh ro.build.version.security_patch "$v"
    done

    resetprop_phh ro.build.tags release-keys
    resetprop_phh ro.boot.vbmeta.device_state locked
    resetprop_phh ro.boot.verifiedbootstate green
    resetprop_phh ro.boot.flash.locked 1
    resetprop_phh ro.boot.veritymode enforcing
    resetprop_phh ro.boot.warranty_bit 0
    resetprop_phh ro.warranty_bit 0
    resetprop_phh ro.debuggable 0
    resetprop_phh ro.secure 1
    resetprop_phh ro.build.type user
    resetprop_phh ro.build.selinux 0

    resetprop_phh ro.adb.secure 1
    setprop ctl.restart adbd
fi

for abi in "" 64;do
    f=/vendor/lib$abi/libstagefright_foundation.so
    if [ -f "$f" ];then
        for vndk in 26 27 28 29;do
            mount "$f" /system/system_ext/apex/com.android.vndk.v$vndk/lib$abi/libstagefright_foundation.so
        done
    fi
done

setprop ro.product.first_api_level "$vndk"

if getprop ro.boot.boot_devices |grep -v , |grep -qE .;then
    ln -s /dev/block/platform/$(getprop ro.boot.boot_devices) /dev/block/bootdevice
fi

if [ -c /dev/dsm ];then
    # /dev/dsm is a magic device on Kirin chipsets that teecd needs to access.
    # Make sure that permissions are right.
    chown system:system /dev/dsm
    chmod 0660 /dev/dsm

    # The presence of /dev/dsm indicates that we have a teecd,
    # which needs /sec_storage and /data/sec_storage_data

    mkdir -p /data/sec_storage_data
    chown system:system /data/sec_storage_data
    chcon -R u:object_r:teecd_data_file:s0 /data/sec_storage_data

    if mount | grep -q " on /sec_storage " ; then
        # /sec_storage is already mounted by the vendor, don't try to create and mount it
        # ourselves. However, some devices have /sec_storage owned by root, which means that
        # the fingerprint daemon (running as system) cannot access it.
        chown -R system:system /sec_storage
        chmod -R 0660 /sec_storage
        chcon -R u:object_r:teecd_data_file:s0 /sec_storage
    else
        # No /sec_storage provided by vendor, mount /data/sec_storage_data to it
        mount /data/sec_storage_data /sec_storage
        chown system:system /sec_storage
        chcon u:object_r:teecd_data_file:s0 /sec_storage
    fi
fi

has_hostapd=false
for i in odm oem vendor product;do
    if grep -qF android.hardware.wifi.hostapd /$i/etc/vintf/manifest.xml;then
        has_hostapd=true
    fi
done

if [ "$has_hostapd" = false ];then
    setprop persist.sys.phh.system_hostapd true
fi

#Weird /odm/phone.prop Huawei stuff
HW_PRODID="$(sed -nE 's/.*productid=([0-9xa-f]*).*/\1/p' /proc/cmdline)"
[ -z "$HW_PRODID" ] && HW_PRODID="0x$(od -A none -t x1 /sys/firmware/devicetree/base/hisi,modem_id | sed s/' '//g)"
for part in odm vendor;do
    if [ -f /$part/phone.prop ];then
        if [ -n "$HW_PRODID" ];then
            eval "$(awk 'BEGIN { a=0 }; /\[.*\].*/ { a=0 }; tolower($0) ~ /.*'"$HW_PRODID"'.*/ { a=1 }; /.*=.*/ { if(a == 1) print $0 }' /$part/phone.prop |sed -nE 's/(.*)=(.*)/setprop \1 "\2";/p')"
        fi
    fi
done

if getprop ro.omc.build.version |grep -qE .;then
	for f in $(find /odm -name \*.apk);do
		mount /system/phh/empty $f
	done
fi

resetprop_phh service.adb.root 0

resetprop_phh ro.bluetooth.library_name libbluetooth.so

setprop vendor.display.res_switch_en 1

resetprop_phh ro.control_privapp_permissions log

if [ "$vndk" -le 27 ];then
    setprop persist.sys.phh.no_present_or_validate true
fi

for f in $(find /sys -name fts_gesture_mode);do
    setprop persist.sys.phh.focaltech_node "$f"
done

if [ "$vndk" -le 27 ] && [ -f /vendor/bin/mnld ];then
    setprop persist.sys.phh.sdk_override /vendor/bin/mnld=26
fi
