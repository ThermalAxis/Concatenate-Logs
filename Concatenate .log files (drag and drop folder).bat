@echo off
setlocal enabledelayedexpansion
title Concatenate Log Files v1.0
set outputFile= "%~p1%~nx1_Concat.log"
set folderPath= %1

echo Concatenate Log Files
echo.

echo Folder containing .log files is %folderpath%
echo Output .log file is %outputFile%
echo.
echo If this is correct press any key to start, otherwise close the program.
echo.
pause>nul

cd %folderPath%

if exist %outputFile% del %outputFile%

cls

echo Concatenate Log Files
echo.
echo Concatenating logs, please wait...

for %%i in (*.log) do (
    type "%%i" >> %outputFile%
    echo. >> %outputFile%  :: Add a newline after each file
)

cls 

echo Concatenate Log Files
echo.
echo Complete, press any key to close the program...
pause>nul