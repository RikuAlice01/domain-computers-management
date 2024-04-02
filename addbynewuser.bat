@echo off
set /p username="Enter the username of the new user: "
set /p password="Enter the password for the new user: "

echo Creating user %username%...
net user %username% %password% /add

if %errorlevel% neq 0 (
    echo Failed to create user %username%.
    pause
    exit /b
)

echo Adding %username% to the Administrators group...
net localgroup Administrators /add %username%

if %errorlevel% neq 0 (
    echo Failed to add %username% to the Administrators group.
) else (
    echo %username% added to the Administrators group.
)

pause