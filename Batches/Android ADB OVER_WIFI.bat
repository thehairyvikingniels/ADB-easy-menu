@echo off
title ADB connect to WIFI
cd E:\Android\sdk\platform-tools
adb tcpip 5555
echo ********************************************
echo Note ipaddress of phone
echo ********************************************
set /p IPADDRESS=
adb connect %IPADDRESS%
pause