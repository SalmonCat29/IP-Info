@echo off
title IP Info
color 3
:start
echo Target IP Or Type Exit To Leave... 
set /p ip=">> "
if "%ip%"=="exit" goto :end
cls
curl https://ipinfo.io/%ip%/json
pause
cls
goto :start

:end
exit
