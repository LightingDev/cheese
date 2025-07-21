@echo off
setlocal

echo Installing Cheese CLI...

:: Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python is not installed or not in PATH.
    echo Please install Python 3.9+ from https://www.python.org/downloads/windows/
    echo and make sure to check "Add Python to PATH" during installation.
    pause
    exit /b 1
)

:: Set directories
set CHEESE_DIR=%USERPROFILE%\.cheese
set BIN_DIR=%CHEESE_DIR%\bin

if not exist "%BIN_DIR%" (
    mkdir "%BIN_DIR%"
)

:: Download the Cheese Python script
echo Downloading Cheese executable...
curl -L https://raw.githubusercontent.com/LightingDev/cheese/main/cheese -o "%BIN_DIR%\cheese.py"

:: Create a cheese.bat wrapper to call the CLI via Python
(
    echo @echo off
    echo python "%%~dp0cheese.py" %%*
) > "%BIN_DIR%\cheese.bat"

:: Add Cheese to PATH (permanent)
echo Adding Cheese to PATH...
setx PATH "%BIN_DIR%;%PATH%" >nul

echo.
echo Cheese installed successfully!
echo Type "cheese about" to check installation.
echo (You may need to restart your terminal or run "refreshenv")

endlocal
pause
