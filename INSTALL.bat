@echo off
REM VRChat Content Creator Studio - Windows Installation Script
REM This script automates the setup process

echo.
echo ╔════════════════════════════════════════════════════════════╗
echo ║   VRChat Content Creator Studio - Installation              ║
echo ╚════════════════════════════════════════════════════════════╝
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Python is not installed or not in PATH
    echo.
    echo Please install Python 3.13+ from: https://www.python.org/downloads/
    echo ⚠️  IMPORTANT: Check "Add Python to PATH" during installation
    echo.
    pause
    exit /b 1
)

echo ✅ Python found
python --version
echo.

REM Upgrade pip
echo 📦 Upgrading pip...
python -m pip install --upgrade pip
echo.

REM Install requirements
echo 📦 Installing dependencies...
pip install -r requirements.txt
echo.

if errorlevel 1 (
    echo ❌ Installation failed
    pause
    exit /b 1
)

echo ✅ Installation complete!
echo.
echo 🚀 To run the application:
echo    python main_gui.py
echo.
echo 🎮 Make sure VRChat is running first!
echo.
pause
