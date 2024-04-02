@echo off
set /p username="Enter the username whose admin rights you want to remove: "

echo Removing admin rights from %username%...
powershell -Command "Set-LocalUser -Name %username% -IsAdministrator $false"

echo Admin rights removed from %username%.
pause