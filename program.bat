@echo off
setlocal enabledelayedexpansion

rem Check if the script is running with admin privileges
net session >nul 2>&1
if %errorlevel% equ 0 (
    color 9
    echo Loading [.]
    timeout /t 1 >nul
    color b
    echo Loading [..]
    timeout /t 1 >nul
    color c
    timeout /t 1 >nul
    color c
    timeout /t 1 >nul
    cls
    echo Credit to Imistrz21 on GitHub
    echo ==================================
    echo Why u use dis script with admin????
    echo ==================================
    echo Credit to Imistrz21 on GitHub
    echo.
    timeout /t 3 >nul
    exit
)
color 9
    echo Loading [.]
	set "file_path="
    timeout /t 1 >nul
    color b
    echo Loading [..]
	set "file_path="
    timeout /t 1 >nul
    color a
    echo Loading [...]
	set "file_path="
    timeout /t 1 >nul
    color
    cls

:main
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

:check_file_path
cls
color a 
echo Credit to Imistrz21 on GitHub
echo ==================================
echo The file path should look like this: "C:\example\example.exe"
set /p file_path="Enter the file path: "

if "%file_path%"=="" goto invalid_path
if not exist "%file_path%" goto invalid_path

rem Check if the file_path points to a folder
if exist "%file_path%\*" goto invalid_path

set "valid_extensions=.exe .bat .cmd .msi"
set "file_extension=%file_path:~-4%"
if "%valid_extensions%" equ "!valid_extensions:%file_extension%=!" goto invalid_path

goto show_menu

:invalid_path
cls
color c
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Invalid file path. Please enter a valid file path.
echo ==================================
echo Credit to Imistrz21 on GitHub
echo.
pause
goto check_file_path

:show_menu
cls
color a
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
