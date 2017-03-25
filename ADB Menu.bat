@echo off
title ADB menu
color 0F


:: INFO OVER THE PROGRAM

:info
echo.
echo **************************************************
echo Copyright Niels Maarleveld V 1.0.0.1 Alpha
echo **************************************************
echo.
echo Menu for using simple ADB Commands on a android
echo phone. Make sure that only one (Android) phone is 
echo connected via a USB cable. Also make sure that USB
echo Debugging is enabled in develper options.
echo.
echo By continuing you accept the terms and conditions
echo found in Terms.txt
echo **************************************************
echo.
pause
cls


:: MAIN MENU

:menu
cls
echo.
echo **************************************************
echo.
echo Type disired command en press enter.
echo.
echo **************************************************
echo.
echo [1] (Un)lock Niels' Phone
echo [2] (Un)install an app
echo [3] Shutdown restart e.t.c.
echo [4] Screen Recording/screenshot
echo [5] Manual ADB terminal
echo.
echo [e] Exit
echo.
echo **************************************************
echo.
set /p choise=


:: CHOISE

if %choise%==1 (
 :choiseone
 cls
 echo **************************************************
 echo Do you want to to Lock or Unlock Niels' phone?
 echo [1] Lock   
 echo [2] Unlock
 echo **************************************************
 set /p choise=
  if %choise%==2 (
  cls
  call "E:\ADB\Batches\Android ADB UNLOCK_NIELSPHONE.bat"
  goto menu
  )
 
 if %choise%==1 (
  cls
  call "E:\ADB\Batches\Android ADB LOCK.bat"
  goto menu
  )
 goto choiseone
 )

if %choise%==2 (
 :choisetwo
 cls
 echo *************************************************
 echo Do you want to Install or Deinstall an app?
 echo [1] Install
 echo [2] Uninstall
 echo *************************************************
 set /p choise=
 if %choise%==1 (
  cls 
  call "E:\ADB\Batches\Android ADB APK-INSTALLER.bat"
  goto menu
  )
 if %choise%==2 (
  cls
  call "E:\ADB\Batches\Android ADB UNINSTALL.bat"
  goto menu
  ) 
 goto choisetwo
 )

if %choise%==3 (
 :choisethree
 cls
 echo **************************************************
 echo Do you want to do?
 echo [1] Shutdown phone
 echo [2] Restart phone
 echo **************************************************
 set /p choise=
 if %choise%==1 (
  cls
  call "E:\ADB\Batches\Android ADB SHUTDOWN.bat"
  goto menu
  )
 if %choise%==2 (
  cls
  call "E:\ADB\Batches\Android ADB RESTART.bat"
  goto menu
  )
 goto choisethree
)

if %choise%==4 (
 :choisefour
 cls
 echo **************************************************
 echo Record or take a screenshot
 echo [1] Record
 echo [2] Take screenshot
 echo **************************************************
 set /p choise=
 if %choise%==1 (
  cls
  call "E:\ADB\Batches\Android ADB RECORD.bat"
  goto menu
  )
 if %choise%==2 (
  cls
  call "E:\ADB\Batches\Android ADB SCREENSHOT.bat"
  goto menu
  )
 goto choisefour
)

if %choise%==5 (
 :choisefive
 cls
 echo **************************************************
 cd "E:\Android\sdk\platform-tools"
 adb version
 echo **************************************************
 echo adb shell terminal open
 echo **************************************************
 adb shell
 cls
 goto menu
)


:: END 

pause
exit

