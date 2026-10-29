@echo off
setlocal
cd /d "%~dp0"
if exist ".venv\Scripts\mkdocs.exe" goto serve
call setup.cmd
if errorlevel 1 exit /b 1
:serve
echo Open http://127.0.0.1:8000 in je browser.
echo Laat dit venster open. Stop de server met Ctrl+C.
".venv\Scripts\python.exe" -m mkdocs serve --dev-addr 127.0.0.1:8000
if errorlevel 1 pause
