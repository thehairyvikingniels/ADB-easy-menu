@echo off
title ADB TOOLS RECORD
set diradb=%~dp0
set diradb=%diradb:Batches=Tools%
set dirout=%~dp0
set dirout=%dirout:Batches=Output_Files%
if not exist "%dirout%" mkdir "%dirout%"
if exist "%dirout%\ScreenRec.mp4" del "%dirout%\ScreenRec.mp4" /Q
cd %diradb%
adb start-server
echo ********************************************
echo Time of recording in Seconds
echo ********************************************
set /p RECTIME=
cls
echo ********************************************
echo Bitrate of recording (4 is normal) in MB/S
echo ********************************************
set /p BITRATE=
cls
set /a BITRATE=BITRATE*1000000
if %RECTIME% lss 60 goto tmin
:timer
for /F "tokens=1-3 delims=:." %%a in ("%time%") do (
   set timeHour=%%a
   set timeMinute=%%b
   set timeSeconds=%%c
)
for /F "tokens=1-3 delims=:." %%a in ("%time%") do (
   set hour=%%a
   set minute=%%b
   set seconds=%%c
)
set /A newTime=timeHour*60 + timeMinute + %RECTIME%/60
set /A timeHour=newTime/60, timeMinute=newTime%%60
if %timeHour% gtr 23 set timeHour=0
if %timeHour% lss 10 set timeHour=0%timeHour%
if %timeMinute% lss 10 set timeMinute=0%timeMinute%
:tmins
echo ********************************************
echo Recording done at: %timeHour%:%timeMinute%
echo It is now        : %hour%:%minute% 
echo ********************************************
goto rec
:tmin
echo ********************************************
echo Recording...
echo ********************************************
:rec
adb shell screenrecord "/sdcard/ScreenRec.mp4" --time-limit %RECTIME% --bit-rate %BITRATE%
cls
echo ********************************************
echo Copying file to pc...
echo ********************************************
adb pull "/sdcard/ScreenRec.mp4" "%dirout%\ScreenRec.mp4"
cls
echo ********************************************
echo Done - File can be found in output_folder
echo ********************************************
pause
