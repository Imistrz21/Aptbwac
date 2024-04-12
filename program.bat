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
    color a
    echo File found.
    
    :choose_bypass
    set bypass_choice=
    echo Choose the bypass type:
    echo 1. Steam bypass
    echo 2. Epic Games bypass
    echo 3. Other programs bypass

    set /p bypass_choice="Enter the bypass type (1, 2, or 3): "
    set "bypass_choice=%bypass_choice: =%"
    echo Bypass choice is: %bypass_choice%
    
    if "%bypass_choice%"=="1" (
        color a
        set bypass_type=Steam
        echo Running "%file_path%" with Steam bypass...
        cmd /min /C "set __COMPAT_LAYER=RUNASINVOKER && start "" "%file_path%""
        exit
    ) else if "%bypass_choice%"=="2" (
        color a
        set bypass_type=Epic Games
        echo Running "%file_path%" with Epic Games bypass...
        cmd /min /C "set __COMPAT_LAYER=RUNASINVOKER && start "" "%file_path%""
        exit
    ) else if "%bypass_choice%"=="3" (
        color a
        set bypass_type=Other programs
        echo Running "%file_path%" with Other programs bypass...
        cmd /min /C "set __COMPAT_LAYER=RUNASINVOKER && start "" "%file_path%""
        exit
    ) else (
        color c
        echo Invalid bypass type. Please choose 1, 2, or 3.
        goto choose_bypass
    )


) else (
    color c
    echo File not found.
    goto check_file_path
)
color a
pause
