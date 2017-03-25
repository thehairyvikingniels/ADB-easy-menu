@echo off
title ADB UNLOCK-NIELSPHONE
cd E:\Android\sdk\platform-tools
echo ********************************************
echo Unlocking Niels's Phone
echo ********************************************
adb shell input keyevent 26
adb shell input swipe 550 1500 550 200 300
adb shell input text 05102000
adb shell input keyevent 66
cls
echo ********************************************
echo Done
echo ********************************************