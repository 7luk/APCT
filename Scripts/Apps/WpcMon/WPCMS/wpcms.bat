@ECHO OFF
if exist %temp%\apct\ goto check
mkdir %temp%\apct\

:check
timeout 1 /nobreak > nul

tasklist /fi "ImageName eq wpcmon.exe" /fo csv 2>NUL | find /I "wpcmon.exe">NUL

if "%ERRORLEVEL%"=="0" (
    echo 1 >> "%temp%/apct/wpc.txt"
    goto end
)
echo 0 >> "%temp%/apct/wpc.txt"

:end
timeout 1 /nobreak > nul
del %temp%\apct\wpc.txt
goto check