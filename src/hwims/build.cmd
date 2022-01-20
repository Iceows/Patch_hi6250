
del HwIms.apk_classes.dex
"./vdexExtractor_winx86_64/vdexExtractor.exe" -i "./HwIms/oat/arm64/HwIms.vdex" -o .

del HwIms.apk_classes-dex2jar.jar
"./dex2jar/d2j-dex2jar.bat" "./HwIms.apk_classes.dex"

del vendor.huawei.hardware.radio-java.jar
../dex2jar/d2j-class-version-switch.sh 8 HwIms_classes-dex2jar.jar vendor.huawei.hardware.radio-java.jar

zip -qd vendor.huawei.hardware.radio-java.jar "android/*" "com/*"

