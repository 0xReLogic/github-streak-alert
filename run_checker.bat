@echo off
:: This batch file is a simple wrapper to run the Python script.
:: It's intended for use with Windows Task Scheduler.

:: Get the directory of this script
set SCRIPT_DIR=%~dp0

:: Change to the script's directory to ensure all paths are correct
cd /d "%SCRIPT_DIR%"

:: Run the main Python script
:: Make sure 'python' is in your system's PATH.
python main.py

:: Pause to keep the window open after the script finishes, so you can see the output.
:: The '> nul' part hides the 'Press any key to continue...' message from pause itself.
echo.
echo --- Script finished. Press any key to close this window. ---
pause > nul
