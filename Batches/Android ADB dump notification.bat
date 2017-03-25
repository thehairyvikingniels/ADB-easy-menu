@echo off
cd E:\Android\sdk\platform-tools
adb shell dumpsys notification > E:\ADB\Output_Files\Notification_dump.txt
pause
