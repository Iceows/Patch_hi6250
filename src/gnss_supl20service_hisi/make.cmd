
REM List le contenu du dex 
java -jar baksmali-2.5.2.jar list dex .\supl20\gnss_supl20service_hisi.odex

REM Genere les fichier smali 
REM java -jar baksmali-2.5.2.jar disassemble -a 26 -o C:\Applis\supl20\src-out C:\Applis\supl20\gnss_supl20service_hisi.odex
java -jar baksmali-2.5.2.jar deodex -a 26 -o .\supl20\src-out -c boot.oat -d C:\Applis\supl20\android8\framework\arm64 .\supl20\gnss_supl20service_hisi.odex

REM Decompile APK, extrait le manifest dans le repertoire cible
java -jar apktool_2.6.0.jar decode -f -o .\supl20\apk-out .\supl20\gnss_supl20service_hisi.apk

REM ---------------------------------------------------------------------------------------


REM Fait un peu de menage
rd /s /q .\supl20-new\apk-out

REM Genere les fichiers smali du patch
java -jar apktool_2.6.0.jar decode -f -o .\supl20-new\apk-out .\supl20\app-release-unsigned.apk

REM Recopie le nouveau fichier IO.smali
xcopy /Y .\supl20-new\apk-out\smali\com\android\bytewriter\IO.smali .\supl20\src-out\com\android\bytewriter\


REM ---------------------------------------------------------------------------------------

REM Sous Notepad, remplacer dans tous les fichiers smali, la chaine  Ljava/lang/System;->arraycopy([BI[BII)V par Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

REM Fabrique le ficher classes.dex  a partir des fichier smali, android  26
java -jar smali-2.5.2.jar a --api 26 .\supl20\src-out -o .\supl20\apk-out\classes.dex

REM Recompile APK  dans le repertoire cible
java -jar apktool_2.6.0.jar build -o .\supl20\recompiled.apk  .\supl20\apk-out

REM Sign this plateform signature
java -jar "ApkSigner.jar" sign  --key platform.pk8 --cert platform.x509.pem  --v4-signing-enabled false --out ".\supl20\gnss_supl20service_hisi_signed.apk" ".\supl20\recompiled.apk"

REM Recopie
xcopy /Y .\supl20\gnss_supl20service_hisi_signed.apk .\apk\gnss_supl20service_hisi.apk

REM envoie le fichier sur le telephone
adb root
adb remount rw, /system
adb push .\apk\gnss_supl20service_hisi.apk /system/app/gnss_supl20service_hisi/

REM End