@echo off
set /p username="Enter the username you want to check to the Administrators group: "
powershell -Command "if ((Get-LocalGroupMember -Group 'Administrators' -Member %username%) -ne $null) { echo %username% is a member of the Administrators group. } else { echo %username% is not a member of the Administrators group. }"
pause