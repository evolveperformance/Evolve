@echo off
color 0A

"C:\Windows\Evolve\Utilities\Service Builder\service-list-builder.exe" --config "C:\Windows\Evolve\Utilities\Service Builder\Stable.ini" --disable-service-warning >nul 2>&1

copy "C:\Windows\Evolve\Utilities\Service Builder\Stable Services.lnk" "C:\" >nul 2>&1
del "C:\Windows\Evolve\Utilities\Service Builder\Stable Services.lnk" >nul 2>&1

explorer "C:\Windows\Evolve\Utilities\Service Builder\build"

echo.
echo Use NSudoLG.exe to run Services-Disable/Enable.bat scripts
pause
