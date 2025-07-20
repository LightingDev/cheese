@echo off
set "CHEESE_BIN=%USERPROFILE%\.cheese\bin"
mkdir "%CHEESE_BIN%" 2>nul

curl -L "https://raw.githubusercontent.com/LightingDev/cheese/main/cheese" -o "%CHEESE_BIN%\cheese"

:: Wrapper
echo @echo off > "%CHEESE_BIN%\cheese.cmd"
echo python "%%~dp0cheese" %%* >> "%CHEESE_BIN%\cheese.cmd"

setx PATH "%CHEESE_BIN%;%PATH%"
echo Installed! Restart terminal to use 'cheese'.
pause
