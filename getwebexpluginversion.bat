@echo off
setlocal enabledelayedexpansion

REM Get the current user's directory
set "user_dir=%USERPROFILE%"

REM Concatenate the target file's path
set "file_path=%user_dir%\AppData\Local\CiscoSpark\accessories\current_log.txt"

REM Ask the user to choose the operation: 1. Clear all files in the directory; 2. Print lines containing [JABRA]Jabra plug-in version
set /p "choice=Please choose an operation: 1. Clear all files in the directory; 2. Print lines containing [JABRA]Jabra plug-in version: "

if "%choice%"=="1" (
    REM Clear all files in the directory
    for %%F in ("%file_path%\..") do (
        del "%%F\*.*" 2>nul
    )
    echo Directory files have been cleared.
) else if "%choice%"=="2" (
    REM Print lines containing [JABRA]Jabra plug-in version
    if exist "%file_path%" (
        for /f "usebackq delims=" %%L in ("%file_path%") do (
            echo %%L | find /i "[JABRA]Jabra plug-in version" >nul
            if not errorlevel 1 (
                echo %%L
            )
        )
    ) else (
        echo The file "%file_path%" does not exist.
    )
) else (
    echo Invalid choice.
)

pause
