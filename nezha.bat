@echo off
REM ============================================================
REM  Nezha Agent Installer
REM  Elevates, runs visibly for ~15 seconds, then closes.
REM ============================================================

net session >nul 2>&1
if %errorLevel% neq 0 (
    powershell -NoProfile -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Install-Nezha.ps1"

exit