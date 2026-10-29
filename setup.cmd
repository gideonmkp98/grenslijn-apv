@echo off
setlocal
cd /d "%~dp0"
if exist ".venv\Scripts\python.exe" goto install
python -m venv .venv
if errorlevel 1 goto failed
:install
".venv\Scripts\python.exe" -m pip install -r requirements.txt
if errorlevel 1 goto failed
echo Installatie voltooid. Start de website met start.cmd.
exit /b 0
:failed
echo Installatie mislukt. Controleer of Python is geinstalleerd en je internetverbinding werkt.
pause
exit /b 1
