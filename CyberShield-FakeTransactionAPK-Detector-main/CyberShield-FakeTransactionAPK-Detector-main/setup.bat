@echo off
title CyberShield - Setup & Install
color 0B

echo.
echo  ==========================================
echo   Shield  CyberShield - First Time Setup
echo   Installing all required dependencies...
echo  ==========================================
echo.

REM Navigate to backend folder
cd /d "%~dp0backend"

echo  [1/3] Checking Python version...
python --version
echo.

echo  [2/3] Installing core packages...
pip install -r requirements.txt
echo.

echo  [3/3] Installing extra required packages...
pip install androguard python-dotenv flask-limiter
echo.

echo  ==========================================
echo   Setup complete! 
echo.
echo   Now run:  start.bat  to launch the app
echo   Or open:  http://localhost:5000
echo  ==========================================
echo.
pause
