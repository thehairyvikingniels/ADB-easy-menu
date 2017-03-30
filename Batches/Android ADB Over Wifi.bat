@echo off 
title ADB over WIFI 
set diradb=%~dp0
set diradb=%diradb:Batches=Tools%
set dirconf=%~dp0
set dirconf=%dirconf:Batches=Config_stuff%
cd %dirconf%
(
  Set /p WIFI_SSID=
  Set /p WIFI_PSWD=
) <Config.txt
set WIFI_PSWD=%WIFI_PSWD:*"=%
set WIFI_SSID=%WIFI_SSID:*"=%
set WIFI_PSWD=%WIFI_PSWD:"=%
set WIFI_SSID=%WIFI_SSID:"=%
if %WIFI_SSID%==your_ssid_here goto setssid
if %WIFI_PSWD%==your_password_here goto setssid
cd %diradb%
adb start-server
adb install wfi.apk
:: Credits to Steinwuf for the apk that is used
:: https://github.com/steinwurf/adb-join-wifi
adb shell am start -n com.steinwurf.adbjoinwifi/com.steinwurf.adbjoinwifi.MainActivity -e ssid %wifissid% -e password_type WPA -e password %wifipswd%
adb uninstall com.steinwurf.adbjoinwifi
adb shell ip route > TMP.txt
for /f "tokens=9" %%A in (TMP.txt) do (set IPaddr=%%A)
del TMP.txt
adb tcpip 5555
adb connect %IPaddr%:5555
exit

:setssid
cls
echo.
echo The ssid and/or password have not been set.
echo To set an ssid and/or password head to:
echo %dirconf%WIFI_config.txt
echo There you have to replace ssid and password with you password and/or ssid.
echo.
echo This program wil now exit
echo.
pause
exit