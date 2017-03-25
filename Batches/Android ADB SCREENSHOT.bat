@echo off
:start
title ADB SCREENSHOT
if exist "E:\ADB\Output_Files\ScreenShot.png" del E:\ADB\Output_Files\ScreenShot.png /Q
cd E:\Android\sdk\platform-tools
echo ********************************************
echo Making Screenshot...
echo ********************************************
adb shell screencap /sdcard/ScreenShot.png
cls
echo ********************************************
echo Copying file to pc...
echo ********************************************
adb pull "/sdcard/ScreenShot.png" "E:\ADB\Output_Files"
cls
cd E:\ADB\Output_Files
echo ********************************************
echo Done - File is in output folder
echo ********************************************
pause