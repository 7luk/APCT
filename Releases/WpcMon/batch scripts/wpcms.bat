::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFC5HSRa+GG6pDaET+NTa38mznn8YWOc+a4rI5oOeI80c5HntdpkjxUZTm8QCQhJbcXI=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSTk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFC5HSRa+GG6pDaET+NTa38mznn8YWOc+a4rI5oOeI80c5HnzZZUgxTRfgM5s
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@ECHO OFF
if exist %temp%\apct\ goto check
mkdir %temp%\apct\

:check
timeout 1 /nobreak > nul

tasklist /fi "ImageName eq wpcmon.exe" /fo csv 2>NUL | find /I "wpcmon.exe">NUL

if "%ERRORLEVEL%"=="0" (
    echo 1 >> "%temp%/apct/wpc.txt"
    call wpcmk-integrated.exe
    goto end
)
echo 0 >> "%temp%/apct/wpc.txt"

:end
timeout 1 /nobreak > nul
del %temp%\apct\wpc.txt
goto check