@ECHO OFF

find "1" %temp%\apct\wpc.txt && (
    goto kill
) || (
    msg "%username%" Microsoft Family already killed. No need to run.
    goto end
)

:kill

msg "%username%" Killing...
timeout 1 /nobreak > nul
taskkill /IM wpcmon.exe /F
timeout 1 /nobreak > nul
msg "%username%" Enjoy!
goto end

:end