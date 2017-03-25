@echo off
:start
title ADB KEYBOARD
cls
cd E:\Android\sdk\platform-tools
echo ********************************************
echo Press ? for help
echo ********************************************

:: CHOISE TO CONTROLL WHAT
:choise
set /p choise=
if %choise%==? (
 cls
 goto help)
if %choise%==7 (
 adb shell input keyevent 4
 goto start)
if %choise%==9 (
 adb shell input keyevent 66
 goto start)
if %choise%==8 (
 adb shell input keyevent 19
 goto start)
if %choise%==4 (
 adb shell input keyevent 21
 goto start)
if %choise%==5 (
 adb shell input keyevent 20
 goto start)
if %choise%==6 (
 adb shell input keyevent 22
 goto start)
if %choise%==/ (
 adb shell input keyevent 3
 goto start)
if %choise%==* (
 goto type)
if %choise%==46 (
 adb shell input swipe 35 500 450 500 150
 goto start)
if %choise%==64 (
 adb shell input swipe 450 500 35 500 150
 goto start)
if %choise%==85 (
 adb shell input swipe 240 20 240 775 300
 goto start)
if %choise%==58 (
 adb shell input swipe 240 775 240 20 300
 goto start)
if %choise%==unlock (
 cls
 call "E:\ADB\Batches\Android ADB UNLOCK_NIELSPHONE.bat"
 goto start)
if %choise%==lock (
 cls
 call "E:\ADB\Batches\Android ADB LOCK.bat"
 goto start)
if %choise%==~ (
 cls
 call "E:\ADB\Batches\Android ADB OPEN_KEYBOARD.bat")
goto start

:: INPUT TEXT 
:type
echo Type disired text and press enter
echo ********************************************
set /p text=
adb shell input text %text%
goto start

:: THIS IS THE HELP PAGE
:help
echo ********************************************
echo Controlls are:
echo  8
echo 456 -- Arrow Keys
echo 7 -- Back
echo 9 -- Enter
echo / -- Home
echo * -- Type Text 
echo Swipe (use arrow keys after eachother ex.46)
echo ********************************************
goto choise