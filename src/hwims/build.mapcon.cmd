

del HwIms.apk_classes.dex
"./vdexExtractor_winx86_64/vdexExtractor.exe" -i "./HwIms/oat/arm64/HwIms.vdex" -o .

del HwIms.apk_classes-dex2jar.jar
"./dex2jar/d2j-dex2jar.bat" "./HwIms.apk_classes.dex"

del com.hisi.mapcon-java.jar
"./dex2jar/d2j-class-version-switch.bat" 8 "HwIms.apk_classes-dex2jar.jar" "com.hisi.mapcon-java.jar"

"zip.exe" -qd com.hisi.mapcon-java.jar "android/*" "vendor/*" "com/huawei/*" "com/android/*"
