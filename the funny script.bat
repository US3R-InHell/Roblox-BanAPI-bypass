@echo off
setlocal enabledelayedexpansion
goto ch3ck
rem below is a check because I am dumb and i hate myself
:ch3ck
IF exist "C:\Users\%username%\Downloads\RobloxPlayerInstaller.exe" (
MOVE C:\Users\%username%\Downloads\RobloxPlayerInstaller.exe C:\Users\%username%\Documents\RobloxPlayerInstaller.exe
RENAME C:\Users\%username%\Documents\RobloxPlayerInstaller.exe 1.exe
) else (
goto ch3ck2
)

:ch3ck2
IF exist "C:\Users\%username%\Documents\1.exe" (
goto 1
) else (
goto ErrorRoblox
)

rem after you're banned from a game with banapi, press "enter" to start the process
:1 
cls 
echo. 
getmac
echo.
echo press any key to delete roblox, frfr.
echo.
pause >nul
goto 2

:2
TASKKILL /F /IM RobloxPlayerBeta.exe >nul
cls
echo part 1
del "C:\Users\%username%\AppData\Local\Roblox\*" /f /q /s >nul
del "C:\Users\%username%\Appdata\Local\Temp\Roblox\" /f /q /s >nul
cls
del "C:\Users\%username%\AppData\Local\CrashDumps" /f /q /s >nul
cls
del "C:\Users\%username%\Pictures\Roblox\" /f /q /s >nul
del "C:\Users\%username%\Desktop\Roblox*" /f /q /s >nul
rem del "C:\Users\user\AppData\Local\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\LocalState\AppIconCache\100\C__USERS_USER_APPDATA_LOCAL_ROBLOX_VERSIONS_VERSION-B71C150C7C1F40DE_ROBLOXPLAYERBETA_EXE" /f /q /s >nul
rem del "C:\Users\user\AppData\Local\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\LocalState\AppIconCache\100\C__Users_user_AppData_Local_Roblox_Versions_RobloxStudioInstaller_exe" /f /q /s >nul
del "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Roblox\*" /f /q /s >nul
del "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Roblox\*" /f /q /s >nul
timeout /t 1 >nul
goto checkcuzamretard


:ErrorRoblox
cls
echo.
echo There was an error. please makesure "RobloxPlayerInstaller" is in C:\Users\%username%\Downloads
echo After you're done downloading, press any key to continue.
start "" https://www.roblox.com/download/client?os=win
pause >nul
goto ch3ck


:checkcuzamretard
if exist %cd%\TMfunny\tmac (
goto basicallymacchanger
) else (
 goto msetup2
)
rem below is basically tmac setup, i forgor, also it installs tmac regardless if you have it installed, I am very lazy to fix or add check
:msetup2
if exist %cd%\TMfunny\TMACv6.0.7_Setup.zip (
goto msetup2p2
) else (
 goto msetup2p1
)
:msetup2p1
cls
mkdir TMfunny
curl -O https://download.technitium.com/tmac/TMACv6.0.7_Setup.zip 
move %cd%\TMACv6.0.7_Setup.zip %cd%\TMfunny\TMACv6.0.7_Setup.zip 
goto msetup2

:msetup2p2
cls
tar zxvf %cd%\TMfunny\TMACv6.0.7_Setup.zip
move %cd%\TMACv6.0.7_Setup.exe %cd%\TMfunny\TMACv6.0.7_Setup.exe
start "" "%cd%\TMfunny\TMACv6.0.7_Setup.exe" /path "%cd%\TMfunny\tmac"
goto msetup2p3

:msetup2p3
if exist %cd%\TMfunny\tmac (
 goto basicallymacchanger1
) else (
 goto msetup2p3
)

:basicallymacchanger1
if exist %cd%\TMfunny\tmac\TMAC.exe (
 goto basicallymacchanger
) else (
 goto :basicallymacchanger1
)

rem funny banapi bypass!!!1!! real (100% skidded)
rem tmac has cli feature, basically -re means  restart internet, -nr means non persistent random mac, and -s means silent 
rem btw i almost forgot to mention, change "Ethernet" to "WiFi" or any name it shows on TMAC.
rem If you have another "Ethernet" example, "Ethernet 2" this script won't work, at least for me.
rem I am not entirely sure how to fix but I am sure someone more far more competent and experienced than me will fix this.
:basicallymacchanger
cls
timeout /t 1 >nul
start "" %cd%\TMfunny\tmac\TMAC.EXE -n "Ethernet" -re -nr -s 
goto aa


rem basically waits until "TMAC.exe" is closed, usually when you gain re connection, this also shows up after first setup
:aa
cls
echo make sure tmac ran and installed, if its stuck here, ur fucked, retart script
timeout /t 5 
tasklist /fi "windowtitle eq Technitium MAC*" /fo csv 2>nul | find /i "tmac.exe">nul
if %ERRORLEVEL% equ 0 (
goto aa
) else (
goto ab
)


rem this install boblox
:ab
timeout /t 5 >nul
start /d  "C:\Users\%username%\Documents\" 1.exe
timeout /t 5 >nul
goto 222

rem this does a funny, basically killing roblox after install and it opens
:222
cls
echo.
echo installing roblox...
echo.
TASKKILL /F /IM RobloxPlayerBeta.exe >nul
if %ERRORLEVEL% equ 0 (
 TASKKILL /F /IM 1.exe
 goto end
) else (
 goto 222
)

:end
cls
echo.
echo done!
echo.
goto 1

rem MAKE SURE YOU USE A BROWSER TO CLEAR ALL HISTORY/DATA. use brave/librewolf and set all data to clear after closing 
rem this may help prevent from certain games "knowing" its you, example: stateview prison
rem to any actual developer that is experienced, I am sorry for what you see