@chcp 65001
@echo off
setlocal enabledelayedexpansion
set file=%2
set dir=%1
cd %dir%
If exist "%1"(<nul set /p x=>%file%
for %%A IN (*) DO (
if %%~zA LEQ 102400 (echo.%%~nxA ^(%%~zA bytes^)>>%file%)
)
echo.Complete
exit
) ELSE (
echo Данной папки нет
exit)
pause>nul
