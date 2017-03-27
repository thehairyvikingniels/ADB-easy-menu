@echo off
set diradb=%~dp0
set diradb=%diradb:Batches=Tools%
cd %diradb%
echo.
echo  ! Android debug bridge is installed in this directory.                                        !
echo  ! This way of accessing ADB requiers you not to open this batch file with admin privelages.   !
echo.
echo.
call cmd.exe
