@echo off
color 0A

REM Run the service-list-builder utility
"C:\Windows\Evolve\Utilities\Service Builder\service-list-builder.exe" --config "C:\Windows\Evolve\Utilities\Service Builder\Stable.ini" --disable-service-warning >nul 2>&1

REM Wait for file creation
timeout /t 3 /nobreak >nul

REM Call sanitizing batch in Misc folder
call "C:\Windows\Misc\Service-Disable-Sanitize.bat"

REM Optional: open build folder
explorer "C:\Windows\Evolve\Utilities\Service Builder\build"

echo.
echo Use NSudoLG.exe to run Services-Disable/Enable.bat scripts
pause
