@echo off
set /p username="Enter the username of the new user: "

echo Adding %username% to the Administrators group...
net localgroup Administrators /add %username%

if %errorlevel% neq 0 (
    echo Failed to add %username% to the Administrators group.
) else (
    echo %username% added to the Administrators group.
)

pause