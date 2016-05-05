@echo off
(set /P appVersion=
)<%userprofile%\documents\Build\VERSION\SMVER.txt
set DestinPath=releases\%appVersion%

for /f %%f in ('dir /b "%DestinPath%"') do del "%DestinPath%\%%f\browser\chrome\%%~nf\locale\browser\searchplugins\ddg.xml"
exit /b %ERRORLEVEL%