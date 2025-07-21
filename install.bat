@echo off
setlocal

echo Installing Cheese CLI...

:: Set directories
set CHEESE_DIR=%USERPROFILE%\.cheese
set BIN_DIR=%CHEESE_DIR%\bin

if not exist "%BIN_DIR%" (
    mkdir "%BIN_DIR%"
)

:: Download the Cheese Python script
echo Downloading Cheese executable...
curl -L https://raw.githubusercontent.com/LightingDev/cheese/main/cheese -o "%BIN_DIR%\cheese"

:: Make a cheese.bat wrapper that calls Python
echo @echo off > "%BIN_DIR%\cheese.bat"
echo python "%%~dp0cheese" %%* >> "%BIN_DIR%\cheese.bat"

:: Add Cheese to PATH (permanent)
setx PATH "%BIN_DIR%;%PATH%" >nul

echo Cheese installed successfully!
echo Please restart your terminal or run "refreshenv" to use Cheese.

endlocal
pause
