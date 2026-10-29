@echo off
setlocal
cd /d "%~dp0"
if exist ".venv\Scripts\mkdocs.exe" goto build
call setup.cmd
if errorlevel 1 exit /b 1
:build
".venv\Scripts\python.exe" -m mkdocs build --strict
if errorlevel 1 goto failed
echo Website gebouwd in de map site.
exit /b 0
:failed
echo Bouwen mislukt. Bekijk de foutmelding hierboven.
pause
exit /b 1
