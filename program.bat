@echo off
setlocal enabledelayedexpansion
mode con: cols=70 lines=20

:loading
cls
color 9
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Loading [.]
timeout /t 1 >nul
color b
echo Loading [..]
timeout /t 1 >nul
color a
echo Loading [...]
timeout /t 1 >nul

:select_option
cls
color a
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Choose the option:
echo 1. Start an executable
echo 2. Run an ms-settings command
echo 3. Credits
echo 4. Exit
echo ==================================
echo Credit to Imistrz21 on GitHub
echo.
set /p option_choice="Enter the option (1, 2, 3, or 4): "
set "option_choice=%option_choice: =%"
cls
if "%option_choice%"=="1" (
    goto start_executable
) else if "%option_choice%"=="2" (
    goto run_mssettings
) else if "%option_choice%"=="3" (
    goto credits
) else if "%option_choice%"=="4" (
    exit /b
) else (
    color c
    cls
    echo Credit to Imistrz21 on GitHub
    echo ==================================
    echo Invalid option. Please choose 1, 2, 3, or 4.
    echo ==================================
    echo Credit to Imistrz21 on GitHub
    echo.
    pause
	cls
    goto select_option
)

:start_executable
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

goto bypass1

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
goto loading

:bypass1
cls
color a
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Loading bypass
echo ==================================
echo Credit to Imistrz21 on GitHub
timeout /t 1 >nul
cls

echo Credit to Imistrz21 on GitHub
echo ==================================
echo Running "%file_path%"
cmd /min /C "set __COMPAT_LAYER=RUNASINVOKER && start "" "%file_path%""
echo ==================================
echo Credit to Imistrz21 on GitHub
echo. 
color a
pause
cls
goto select_option

:run_mssettings
:run_mssettings_command
cls
color a 
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Enter the ms-settings command:
set /p mssettings_command="Command: "

if "%mssettings_command%"=="" goto invalid_command
cls
color a
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Running ms-settings command: %mssettings_command%
echo ==================================
cmd /min /C "set __COMPAT_LAYER=RUNASINVOKER && start ms-settings:%mssettings_command%"
echo Credit to Imistrz21 on GitHub
echo.
color a
pause
cls
goto select_option

:invalid_command
cls
color c
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Invalid ms-settings command. Please enter a valid command.
echo ==================================
echo Credit to Imistrz21 on GitHub
echo.
pause
goto run_mssettings_command

:credits
cls 
color b
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Hello, Im Imistrz21, a programmer that does stupid things with batch.
echo ==================================
echo Credit to Imistrz21 on GitHub
echo.
pause
goto select_option

