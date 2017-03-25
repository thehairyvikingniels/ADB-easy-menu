@echo off
title ADB APK-INSTALLER
cd E:\ADB\Input_Files
echo **************************************************
echo put .apk that you want to install in the input folder
echo press space when done
echo **************************************************
pause
cls
REN *.apk install.apk 
cd E:\Android\sdk\platform-tools
adb install E:\ADB\Input_Files\install.apk -s
if exist E:\ADB\Input_Files\install.apk del E:\ADB\Input_Files\install.apk
echo **************************************************
echo Done
echo **************************************************
pause