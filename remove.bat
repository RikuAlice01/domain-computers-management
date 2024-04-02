@echo off
set /p username="Enter the username you want to remove from the Administrators group: "

echo Removing %username% from the Administrators group...
net localgroup Administrators %username% /delete

if %errorlevel% neq 0 (
    echo Failed to remove %username% from the Administrators group.
) else (
    echo %username% removed from the Administrators group.
)

pause