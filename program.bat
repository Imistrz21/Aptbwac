@echo off
color 9
echo Loading [.]
timeout /t 1 >nul
color b
echo Loading [..]
timeout /t 1 >nul
color a
echo Loading [...]
timeout /t 1 >nul
color
cls
color a
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Welcome!! 
echo Everything initialized properly!!!
echo ==================================
echo Credit to Imistrz21 on GitHub
echo.
pause
cls
:main
setlocal

set file_path=%1

:check_file_path
if "%file_path%"=="" (
    echo Credit to Imistrz21 on GitHub
    echo ==================================
    echo The file path should look like this: "C:\example\example.exe"
    set /p file_path="Enter the file path: "
    echo ==================================
    echo Credit to Imistrz21 on GitHub
)

if not exist "%file_path%" (
    cls	
    color c
    echo Credit to Imistrz21 on GitHub
    echo ==================================
    echo File not found. Please enter a valid file path.
    echo ==================================
    echo Credit to Imistrz21 on GitHub
    echo.
    setlocal
    set file_path=%1
    pause
    cls
    color a
    goto check_file_path
)

:show_menu
cls
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Choose the bypass type:
echo 1. Steam bypass
echo 2. Epic Games bypass
echo 3. Other programs bypass
echo 4. Exit
echo ==================================
echo Credit to Imistrz21 on GitHub
echo.
set /p bypass_choice="Enter the bypass type (1, 2, 3, or 4): "
set "bypass_choice=%bypass_choice: =%"

if "%bypass_choice%"=="1" (
    set bypass_type=Steam
    cls
) else if "%bypass_choice%"=="2" (
    set bypass_type=Epic Games
    cls
) else if "%bypass_choice%"=="3" (
    set bypass_type=Other programs
    cls
) else if "%bypass_choice%"=="4" (
    cls
    exit /b
) else (
    color c
    cls
    echo Credit to Imistrz21 on GitHub
    echo ==================================
    echo Invalid bypass type. Please choose 1, 2, 3, or 4.
    echo ==================================
    echo Credit to Imistrz21 on GitHub
    echo.
    pause
    goto show_menu
)
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Running "%file_path%" with %bypass_type% bypass...
cmd /min /C "set __COMPAT_LAYER=RUNASINVOKER && start "" "%file_path%""
echo ==================================
echo Credit to Imistrz21 on GitHub
echo. 
color a
pause
goto main
