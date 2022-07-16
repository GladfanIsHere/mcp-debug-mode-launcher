@echo off
title MCP Debug mode launcher
mode con: cols=50 lines=20

:main
cls
echo Hello, welcome to Minicraft + Debug mode launcher!
echo.
timeout /t 2 /nobreak > nul
echo Please type the name of the Minicraft + .jar file
echo so the program can launch MCP in Debug mode...
echo.
set /p input=

if exist %input%.jar (
echo.
echo %input%.jar was found correctly,
timeout /t 1 /nobreak > nul
echo the game will launch right now!
echo.
pause
goto debugrun
) else (
echo.
echo The file %input%.jar was not found,
timeout /t 1 /nobreak > nul
echo please check that %input%.jar is in the same
echo directory as debugmode.bat, also, make sure
echo that you wrote the name correctly, or else
echo it won't launch the game!
echo.
pause
goto main
)
pause
goto main

:debugrun
cls
mode con: cols=100 lines=20
echo The game was launched correctly, do not close this window or the game will close!
echo.

java -jar %input%.jar --debug

pause