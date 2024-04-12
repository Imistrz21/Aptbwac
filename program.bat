@echo off
color a
echo Credit to Imistrz21 on github
setlocal

set file_path=%1

:check_file_path
if "%file_path%"=="" (
    set /p file_path="Enter the file path: "
)

if exist "%file_path%" (
    echo File found.
    
    :choose_bypass
    set bypass_choice=
    echo Choose the bypass type:
    echo 1. Steam bypass
    echo 2. Epic Games bypass
    echo 3. Other programs bypass

    set /p bypass_choice="Enter the bypass type (1, 2, or 3): "
    rem Remove leading and trailing whitespace characters
    set "bypass_choice=%bypass_choice: =%"
    echo Bypass choice is: %bypass_choice%
    
    if "%bypass_choice%"=="1" (
        set bypass_type=Steam
    ) else if "%bypass_choice%"=="2" (
        set bypass_type=Epic Games
    ) else if "%bypass_choice%"=="3" (
        set bypass_type=Other programs
    ) else (
        echo Invalid bypass type. Please choose 1, 2, or 3.
        goto choose_bypass
    )

    echo Running "%file_path%" with %bypass_type% bypass...
    cmd /min /C "set __COMPAT_LAYER=RUNASINVOKER && start "" "%file_path%""
    exit
) else (
    color c
    echo File not found.
    goto check_file_path
)

pause
