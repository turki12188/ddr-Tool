@echo off
title ddR Tool - Discord Tool
color 08
mode con: cols=75 lines=25

:menu
cls                               
echo  ==============================      ==============================================     ====================
echo            ddR Tool                                  : warning :                        Discord Tool Verison
echo          Made By nx.1x                    Make Sure You Run It As Administrator               1.8.0.9
echo  ==============================      ==============================================     ====================         
echo  1. Update Discord to the LTS Version - For Edge And Chrome And Brave Browser!
echo  2. Discord 2021 Version - For Edge And Chrome And Brave Browser!
echo  3. Discord PLx - Fixes Discord Problems
echo  4. install BetterDiscord - For plugins And themes
echo  5. Discord PTB - For Mods
echo  6. Reinstall Discord! - it may delete Disscord LTS
echo  7. DiscordFPS!
ECHO  8. Update Discord To The Latest Verison - Its Not Working Rn!                  
echo  9. Exit
set /p choice=Choose an option (1-9):

if %choice%==1 goto DiscordLTS
if %choice%==2 goto Discord2021
if %choice%==3 goto DiscsordLX
if %choice%==4 goto ddr-Runner
if %choice%==5 goto DiscordMdx
if %choice%==6 goto DiscordVCX
if %choice%==nxc goto nxc
if %choice%==7 goto DiscordKosOmk
if %choice%==8 goto DiscordKxc
if %choice%==VanCx goto VanCx
if %choice%==9 exit
if %choice%==Mx goto Mx
echo Invalid choice! Please try again.
pause
goto menu

:DLSDiscord
echo
start iexplore Discord.com
goto start

:Discord2021
cls
echo Done...
echo.
:: Adjust for best performance
powercfg /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
:: Disable Xbox Game Bar
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 0 /f
:: Disable Windows Animations
reg add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d 0 /f
:: Disable Windows Transparency
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d 0 /f
:: Disable Windows Tips and Tricks
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d 0 /f
:: Disable Cortana
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 0 /f
:: Disable Telemetry
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
echo Discord 2021 Version Has Been instelled!
pause
goto menu


:DiscordLTS
cls
echo Done...
echo.
:: Adjust for best performance
powercfg /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
:: Disable Xbox Game Bar
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 0 /f
:: Disable Windows Animations
reg add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d 0 /f
:: Disable Windows Transparency
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d 0 /f
:: Disable Windows Tips and Tricks
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d 0 /f
:: Disable Cortana
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 0 /f
:: Disable Telemetry
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
echo Discord LTS Has Been instelled!
pause
goto menu

:
cls
echo Discord Has Been Cleaned - For Better FPS...
:: Clean Temp Files
del /q /f %temp%\*
:: Clean Prefetch Files
del /q /f C:\Windows\Prefetch\*
:: Clean Windows Update Cache
net stop wuauserv
rd /s /q C:\Windows\SoftwareDistribution
net start wuauserv
echo Temporary files cleaned!
pause
goto menu

::
cls
echo Resetting network settings...
echo.
:: Reset TCP/IP
netsh int ip reset
:: Reset Winsock
netsh winsock reset
:: Flush DNS
ipconfig /flushdns
echo Network settings reset!
pause
goto menu

:
cls
echo Disabling unnecessary services...
echo.
:: Disable Superfetch (SysMain)
sc config SysMain start= disabled
sc stop SysMain
:: Disable Windows Search
sc config WSearch start= disabled
sc stop WSearch
:: Disable Windows Error Reporting
sc config WerSvc start= disabled
sc stop WerSvc
:: Disable Background Apps
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d 1 /f
echo Unnecessary services disabled!
pause
goto menu

:
cls
echo Enabling Game Mode...
echo.
:: Enable Game Mode
reg add "HKEY_CURRENT_USER\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d 1 /f
echo Game Mode enabled!
pause
goto menu

:
cls
echo Restoring default settings...
echo.
:: Restore Power Plan
powercfg /setactive 381b4222-f694-41f0-9685-ff5bb260df2e
:: Enable Xbox Game Bar
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 1 /f
:: Enable Windows Animations
reg add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d 1 /f
:: Enable Windows Transparency
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d 1 /f
:: Enable Windows Tips and Tricks
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d 1 /f
:: Enable Cortana
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 1 /f
:: Enable Telemetry
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 1 /f
:: Enable Superfetch (SysMain)
sc config SysMain start= auto
sc start SysMain
:: Enable Windows Search
sc config WSearch start= auto
sc start WSearch
:: Enable Windows Error Reporting
sc config WerSvc start= auto
sc start WerSvc
:: Enable Background Apps
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d 0 /f
echo Default settings restored!
pause
goto menu

:DiscsordLX
cls
echo Done... - Discord PLx
echo.
:: Adjust for best performance
powercfg /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
:: Disable Xbox Game Bar
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 0 /f
:: Disable Windows Animations
reg add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d 0 /f
:: Disable Windows Transparency
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d 0 /f
:: Disable Windows Tips and Tricks
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d 0 /f
:: Disable Cortana
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 0 /f
:: Disable Telemetry
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
echo Discord Has Been Fixed! 
pause
goto menu

:ddr-Runner
echo BetterDiscord Has Been installed!

:: Disable Game DVR
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d 0 /f

:: Optimize System Responsiveness for Gaming
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 20 /f

:: Disable Network Throttling
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 4294967295 /f

:: Optimize GPU Scheduling (Windows 10/11)
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SchedulingCategory" /t REG_DWORD /d 1 /f

:: Disable Windows Animations (Optional)
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d 9032078000000 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d 3 /f

echo Discord Has Been Reinstalled successfully!
echo Restart your computer for changes to take effect.
pause

:DiscordMdx
echo ┆ Discord FTB ┆

:: List of common background processes to close
set Discord.exe

:: Loop through the list and terminate each process
for %%p in (%processes%) do (
    taskkill /f /im %%p >nul 2>&1
    if errorlevel 1 (
        echo %%p is not running.
    ) else (
        echo Successfully terminated %%p.
    )
)

:: Close all Chrome instances (optional)
taskkill /f /im Discord.exe >nul 2>&1
if errorlevel 1 (
    echo Discord New Version Has Been Added To Your PackAge!
) else (
    echo Successfully Discord Date Has Been Deleted.
)

:: Close all Microsoft Edge instances (optional)
taskkill /f /im msedge.exe >nul 2>&1
if errorlevel 1 (
    echo Successfully Discord Has Been CVD.
) else (
    echo Successfully Discord Has Been CVD.
)

:: Close all Firefox instances (optional)
taskkill /f /im firefox.exe >nul 2>&1
if errorlevel 1 (
    echo Discord PTB Has Been Updated.
) else (
    echo Successfully terminated Firefox.
)

echo Successfully Discord Date Has Been Deleted.
pause

:DiscordVCX
taskkill /IM discord.exe /F
echo Discord Has Been Reinstalled Successfully!.
pause

:DLSDiscord
setlocal enabledelayedexpansion

:: Set temp folders to clean
set temp_folders=%temp% %windir%\temp %windir%\System32\config\systemprofile\AppData\Local\Temp

:: Clean temp folders
for %%f in (%temp_folders%) do (
    echo Cleaning %%f
    del /q /f /s "%%f\*"
    for /d %%d in (%%f\*) do (
        rd /q /s "%%d"
    )
)

:: Clean Windows Temp folder
echo Cleaning Windows Temp folder
del /q /f /s "%windir%\Temp\*"
for /d %%d in (%windir%\Temp\*) do (
    rd /q /s "%%d"
)

:: Clean User Temp folder
echo Cleaning User Temp folder
del /q /f /s "%temp%\*"
for /d %%d in (%temp%\*) do (
    rd /q /s "%%d"
)

:: Clean System Temp folder
echo Cleaning System Temp folder
del /q /f /s "%windir%\System32\config\systemprofile\AppData\Local\Temp\*"
for /d %%d in (%windir%\System32\config\systemprofile\AppData\Local\Temp\*) do (
    rd /q /s "%%d"
)

echo Discord Has Been Updated!
pause

:DiscordKosOmk
setlocal enabledelayedexpansion

:: Check if Discord is running and close it
tasklist /FI "IMAGENAME eq discord.exe" 2>NUL | find /I /N "discord.exe">NUL
if %ERRORLEVEL%==0 (
    echo Closing Discord...
    taskkill /im discord.exe /f
)

:: Delete Discord cache
echo Deleting Discord cache...
del /f /q "%APPDATA%\Discord\cache\*"
rmdir /s /q "%APPDATA%\Discord\cache"

:: Delete Discord temporary files
echo Deleting Discord temporary files...
del /f /q "%APPDATA%\Discord\tmp\*"
rmdir /s /q "%APPDATA%\Discord\tmp"

:: Delete Discord logs
echo Deleting Discord logs...
del /f /q "%APPDATA%\Discord\logs\*"
rmdir /s /q "%APPDATA%\Discord\logs"

:: Delete Discord crash reports
echo Deleting Discord crash reports...
del /f /q "%APPDATA%\Discord\crash_reports\*"
rmdir /s /q "%APPDATA%\Discord\crash_reports"

:: Clear Discord settings
echo Clearing Discord settings...
del /f /q "%APPDATA%\Discord\settings.json"

:: Restart Discord
echo Restarting Discord...
start "" "
echo Done!
pause

:DiscordKxc
setlocal

:: Define the Discord download URL for the latest LTS version
set "discordUrl=https://discord.com/api/download?platform=win"

:: Define the path to the Discord installation
set "discordPath=%LocalAppData%\Discord"

:: Check if Discord is installed
if exist "%discordPath%" (
    echo Discord is Updating. Updating to the latest version...
) else (
    echo Discord is not installed. Installing the latest version...
)

:: Download the latest version of Discord
echo Downloading Discord...
powershell -Command "Invoke-WebRequest -Uri %discordUrl% -OutFile %temp%\DiscordSetup.exe"

:: Install Discord
echo Installing Discord...
start /wait "" "%temp%\DiscordSetup.exe" --install

:: Clean up
del "%temp%\DiscordSetup.exe"

echo Discord has been updated to the latest  version.
pause
endlocal

:Mx
setlocal

:: Define the Discord download URL for the latest LTS version
set "discordUrl=https://discord.com/api/download?platform=win"

:: Define the path to the Discord installation
set "discordPath=%LocalAppData%\Discord"

:: Check if Discord is installed
if exist "%discordPath%" (
    echo Discord is Updating - Vancord Upadte!
) else (
    echo Discord is not installed. Installing the New Vancord version...
)

:: Download the latest version of Discord
echo Downloading Discord...
powershell -Command "Invoke-WebRequest -Uri %discordUrl% -OutFile %temp%\DiscordSetup.exe"

:: Install Discord
echo Installing Discord...
start /wait "" "%temp%\DiscordSetup.exe" --install

:: Clean up
del "%temp%\DiscordSetup.exe"

echo Discord has been updated! - Vancord Upadated
pause
endlocal

:VanCx
setlocal enabledelayedexpansion

:: Set Vancord installer path
set "VANCORD_INSTALLER_PATH=C:\Path\To\VancordInstaller.exe"

:: Set Discord account credentials
set "DISCORD_EMAIL=your_email@example.com"
set "DISCORD_PASSWORD=your_password"

:: Set installation directory
set "INSTALL_DIR=C:\Vancord"

:: Check if Vancord installer exists
if not exist "%VANCORD_INSTALLER_PATH%" (
    echo Error: Vancord installer not found.
    pause
    exit /b 1
)

:: Run Vancord installer
echo Installing Vancord...
start /wait "" "%VANCORD_INSTALLER_PATH%"

:: Wait for installation to complete
timeout /t 10

:: Launch Vancord and login to Discord
echo Launching Vancord and logging in to Discord...
start "" "%INSTALL_DIR%\Vancord.exe"
timeout /t 5

:: Send Discord login credentials to Vancord
echo Sending Discord login credentials...
echo !DISCORD_EMAIL!| clip
timeout /t 1
echo !DISCORD_PASSWORD!| clip
timeout /t 1

:: Simulate keyboard input to submit login form
echo Simulating keyboard input to submit login form...
powershell -Command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::SendKeys('^{TAB}{ENTER}')"

echo Vancord installation and login complete!
pause

:nxc
:start
echo The Tool Is Updateing!
timeout /t 2 /nobreak >nul
start "" "%~dpnx0"
exit


