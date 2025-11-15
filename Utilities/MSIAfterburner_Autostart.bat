@echo off

REM Get Startup folder path
set "STARTUP=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "TARGET=%STARTUP%\MSIAfterburner_Startup.bat"

REM Write the commands to the new startup batch file
echo @echo off > "%TARGET%"
echo start "" /min "C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe" -Profile1 -m -nosplash >> "%TARGET%"
echo timeout /t 3 /nobreak ^>nul >> "%TARGET%"
echo taskkill /IM MSIAfterburner.exe /F ^>nul 2^>^&1 >> "%TARGET%"
echo exit >> "%TARGET%"

REM Done
exit
