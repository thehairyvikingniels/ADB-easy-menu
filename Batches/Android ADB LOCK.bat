@echo off
title ADB LOCK
cd E:\Android\sdk\platform-tools
echo ********************************************
echo Locking Phone...
Echo ********************************************
adb shell input keyevent 26
cls
echo ********************************************
echo Done
echo ********************************************
