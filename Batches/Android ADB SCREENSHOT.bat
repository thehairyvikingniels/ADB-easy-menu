@echo off
:start
title ADB SCREENSHOT
set diradb=%~dp0
set diradb=%diradb:Batches=Tools%
set dirout=%~dp0
set dirout=%dirout:Batches=Output_Files%
if not exist "%dirout%" mkdir "%dirout%"
if exist "%dirout%\ScreenShot.png" del "%dirout%\ScreenShot.png" /Q
cd %diradb%
echo ********************************************
echo Making Screenshot...
echo ********************************************
adb shell screencap /sdcard/ScreenShot.png
cls
echo ********************************************
echo Copying file to pc...
echo ********************************************
echo %dirout%
adb pull "/sdcard/ScreenShot.png" "%dirout%\Screenshot.png"
cls
cd %dirout%
echo ********************************************
echo Done - File is in output folder
echo ********************************************
pause