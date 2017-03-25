@echo off
title ADB OPEN-WEBSITE
cd E:\Android\sdk\platform-tools
echo.
echo ********************************************
echo Enter website that will be opend on device.
echo MUST start with http or https!
echo ********************************************
set /p website=
cls
echo ********************************************
echo Please wait...
echo ********************************************
adb shell am start -a android.intent.action.VIEW -d %website%
cls
echo ********************************************
echo Done.
echo ********************************************
pause