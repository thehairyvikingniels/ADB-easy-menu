@echo off
echo ********************************************
echo Press Space to confirm Shutdown
pause
cd E:\Android\sdk\platform-tools
adb shell reboot -p
echo ********************************************
echo Done
echo ********************************************
pause