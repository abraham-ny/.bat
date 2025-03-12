@echo off
color 0E
title Utility Batch File

:main
cls
echo =========================================
echo            Utility Batch File
echo =========================================
echo.
echo Current date and time: %date% %time%
echo.
echo Files and directories in the current folder:
echo -------------------------------------------
dir /b
echo -------------------------------------------
echo.
echo 1. Delete a file
echo 2. Exit
echo.
set /p choice=Choose an option (1-2): 

if %choice%==1 goto delete_file
if %choice%==2 goto end

goto main

:delete_file
cls
echo =========================================
echo           Delete a File Utility
echo =========================================
echo.
echo Files in the current folder:
echo -------------------------------------------
dir /b
echo -------------------------------------------
echo.
set /p filename=Enter the name of the file to delete: 

if exist %filename% (
    del %filename%
    echo %filename% has been deleted.
) else (
    echo File not found.
)

pause
goto main

:end
echo.
echo Thank you for using the utility!
pause
exit
