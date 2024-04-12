@echo off
color a
echo Credit to Imistrz21 on github
setlocal

set file_path=%1

if "%file_path%"=="" (
    set /p file_path="Enter the file path: "
)

if exist "%file_path%" (
    echo File found. Running "%file_path%"
    cmd /min /C "set __COMPAT_LAYER=RUNASINVOKER && start "" "%file_path%""
) else (
    color c
    echo File not found.
)

pause
