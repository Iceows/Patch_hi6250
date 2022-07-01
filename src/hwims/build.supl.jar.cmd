
del gnss_supl20service_hisi.apk_classes.dex
".\vdexExtractor_winx86_64\vdexExtractor.exe" -i "./supl20/oat/arm64/gnss_supl20service_hisi.vdex" -o .

del gnss_supl20service_hisi.apk_classes-dex2jar.jar
".\dex2jar\d2j-dex2jar.bat" ".\gnss_supl20service_hisi.apk_classes.dex"

del gnss_supl20service_hisi_iceows.jar
".\dex2jar\d2j-class-version-switch.bat" 8 gnss_supl20service_hisi.apk_classes-dex2jar.jar "gnss_supl20service_hisi_iceows.jar"

REM Supprime les deux repertoires
REM ".\zip.exe" -qd gnss_supl20service_hisi_iceows.jar "android/*" "com/*"

pause

