@echo off
title ADB over WIFI 


:wifi_connect
::WIFI AUTOCONNECTER
cd E:\ADB\AutoHacker\
REN *.apk install.apk
cd E:\Android\sdk\platform-tools
adb install E:\ADB\Batches\AutoHacker\install.apk
adb shell am start -n com.steinwurf.adbjoinwifi/com.steinwurf.adbjoinwifi.MainActivity -e ssid Niels-WIFI -e password_type WPA -e password Maarleveld10
adb uninstall com.steinwurf.adbjoinwifi



:find_ip
::FIND DEVICES IP ADDRES
cd E:\Android\sdk\platform-tools
adb shell ip route > E:\ADB\Batches\AutoHacker\addrs.txt
for /f "tokens=9" %%A in (E:\ADB\Batches\AutoHacker\addrs.txt) do (set IPaddr=%%A)



:adb_wifi
::CONNECT ADB OVER WIFI
cd E:\Android\sdk\platform-tools
adb tcpip 5555
adb connect %IPaddr%:5555

 pause