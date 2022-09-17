@echo off
color 1E
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------



title HWID-Spoofer by @syukranDev :)
Set mycmdWidth=75
Set mycmdHeight=40


setlocal
call :colorEZ
cls

SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION

:menuLOOP

color 1E
cls

echo  %ESC%[44m%ESC%[107m%ESC%[91mVersion:2.31 [MAC 2021]
echo %ESC%[44m%ESC%[92m------------------------
echo %ESC%[44m%ESC%[92m***** HWID Spoofer by @syukranDev ***** 
echo %ESC%[44m%ESC%[92m------------------------ %ESC%[97m%ESC%[44m 
echo.
for /f "tokens=1,2,* delims=_ " %%A in ('"findstr /b /c:":menu_" "%~f0""') do echo.  %%B  %%C
set choice=
echo.&set /p choice= Please select your choice:  ||GOTO:EOF
echo.&call:menu_%choice%

GOTO:menuLOOP
