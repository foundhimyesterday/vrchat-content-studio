@echo off
REM VRChat Content Creator Studio - Quick Run Script (Windows)

echo.
echo ╔════════════════════════════════════════════════════════════╗
echo ║   VRChat Content Creator Studio                             ║
echo ╚════════════════════════════════════════════════════════════╝
echo.
echo 🎮 Make sure VRChat.exe is running!
echo.
echo Launching application...
echo.

python main_gui.py

if errorlevel 1 (
    echo.
    echo ❌ Error: Could not run the application
    echo.
    echo Troubleshooting:
    echo 1. Make sure Python 3.13+ is installed
    echo 2. Run: python setup.py
    echo 3. Run: pip install -r requirements.txt
    echo 4. Make sure VRChat.exe is running
    echo 5. Try running as Administrator
    echo.
    pause
)
