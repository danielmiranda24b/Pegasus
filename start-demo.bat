@echo off
rem Starts the Pluto Hacks local server (npm run serve, port 8080) and opens the demo.
set "APP=C:\Users\danie\Documents\pluto-hacks"
cd /d "%APP%" || (echo Folder not found: %APP% & pause & exit /b 1)
start "Pluto Hacks server" cmd /k npm run serve
timeout /t 3 >nul
start "" http://127.0.0.1:8080/10-demo-hub/
