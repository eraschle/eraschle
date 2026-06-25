@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ============================================================
echo  Skillsliste neu erstellen
echo ============================================================
echo.
echo Liest skills_daten.xlsx und erzeugt docs/index.html ...
echo.

uv run build.py

if errorlevel 1 (
    echo.
    echo ------------------------------------------------------------
    echo  Es ist ein Fehler aufgetreten.
    echo  Bitte die obige Meldung lesen und skills_daten.xlsx korrigieren.
    echo ------------------------------------------------------------
    echo.
    pause
    exit /b 1
)

echo.
echo Fertig. Das Fenster kann geschlossen werden.
echo.
pause
