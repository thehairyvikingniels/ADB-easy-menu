@echo off
set diradb=%~dp0
set diradb=%diradb:Batches=Tools%
echo ********************************************
echo Press Space to confirm Shutdown
pause
cd %diradb%
adb shell reboot -p
echo ********************************************
echo Done
echo ********************************************
pause
