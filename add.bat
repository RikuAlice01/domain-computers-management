@echo off
set /p computer="Enter the name or IP address of the remote computer: "
set /p username="Enter the username you want to add to the administrators group: "

echo Adding %username% to the administrators group on %computer%...
powershell -Command "Invoke-Command -ComputerName %computer% -ScriptBlock {Add-LocalGroupMember -Group 'Administrators' -Member '%username%'}"

echo %username% added to the administrators group on %computer%.
pause