@echo off
title ADB Uninstall
set ss=* deamon running *
set diradb=%~dp0
set diradb=%diradb:Batches=Tools%
set dirbat=%~dp0
set dirbat=%dirbat:Batches=Output_Files%
if exist "%dirbat%\packets.txt" del %dirbat%\packets.txt
cd %diradb%
echo.
echo deamon check
echo.
adb start-server >tmp.txt
set /p ss=<tmp.txt
del tmp.txt
echo %ss%
adb shell pm list packages >>%dirbat%\packets.txt
set /p package=<%dirbat%\packets.txt
if [%package%] == [] goto Failure
echo.
echo Type chosen package to uninstall. You can find packagenames
echo of installed apps in the output_files directory in the packets.txt
echo.
set /p package=
adb uninstall %package%
echo.
pause
del %dirbat%\packets.txt
exit

:Failure
cls
echo an error has occourd...
echo.
adb devices
del %dirbat%\packets.txt
pause
