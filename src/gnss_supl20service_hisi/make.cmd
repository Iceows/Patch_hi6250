REM List le contenu du dex 
java -jar baksmali-2.5.2.jar list dex C:\Applis\supl20\gnss_supl20service_hisi.odex

REM Genere les fichier smali 
REM java -jar baksmali-2.5.2.jar disassemble -a 26 -o C:\Applis\supl20\src-out C:\Applis\supl20\gnss_supl20service_hisi.odex
java -jar baksmali-2.5.2.jar deodex -a 26 -o C:\Applis\supl20\src-out -c boot.oat -d C:\Applis\supl20\Android8\framework\arm64 C:\Applis\supl20\gnss_supl20service_hisi.odex

REM Fabrique le ficher classes.dex  a partir des fichier smali
java -jar smali-2.5.2.jar a -a 26 C:\Applis\supl20\src-out -o C:\Applis\supl20\classes.dex

REM Decompile APK
java -jar apktool_2.6.0.jar decode -o C:\Applis\supl20\gnss_supl20service_hisi C:\Applis\supl20\gnss_supl20service_hisi.apk

REM Copie dans le repertoire APK  
xcopy C:\Applis\supl20\classes.dex C:\Applis\supl20\gnss_supl20service_hisi

REM Recompile APK
java -jar apktool_2.6.0.jar build -o C:\Applis\supl20\recompiled.apk  C:\Applis\supl20\gnss_supl20service_hisi

REM Sign this plateform signature
java -jar "ApkSigner.jar" sign  --key platform.pk8 --cert platform.x509.pem  --v4-signing-enabled false --out "C:\Applis\supl20\gnss_supl20service_hisi_signed.apk" "C:\Applis\supl20\recompiled.apk"


