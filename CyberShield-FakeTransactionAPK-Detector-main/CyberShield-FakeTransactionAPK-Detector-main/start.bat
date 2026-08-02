@echo off
title CyberShield - Banking APK Detector
color 0A

echo.
echo  ==========================================
echo   Shield  CyberShield APK Detector
echo   AI-Powered fake transaction app Detection
echo  ==========================================
echo.

REM Navigate to backend folder
cd /d "%~dp0backend"

echo  [*] Starting server...
echo  [*] Open your browser and go to:
echo.
echo      http://localhost:5000
echo.
echo  [*] Press Ctrl+C to stop the server
echo.
echo  ==========================================
echo.

python app.py

pause
