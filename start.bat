@echo off
REM ════════════════════════════════════════════════════════════
REM  NOVA AI — Windows Quick Start Script
REM  Double-click this file to launch NOVA AI
REM ════════════════════════════════════════════════════════════

title NOVA AI - Voice Assistant
color 0D

echo.
echo  ╔══════════════════════════════════════════════════════╗
echo  ║                                                      ║
echo  ║        ✦  NOVA AI  — Voice Intelligence v12          ║
echo  ║                                                      ║
echo  ╚══════════════════════════════════════════════════════╝
echo.

REM ── Check Python ────────────────────────────────────────────
python --version >nul 2>&1
IF ERRORLEVEL 1 (
    echo  [ERROR] Python not found!
    echo  Please install Python 3.10+ from https://python.org
    echo  Make sure to check "Add Python to PATH" during install.
    pause
    exit /b 1
)

echo  [OK] Python found
python --version

REM ── Check .env ───────────────────────────────────────────────
IF NOT EXIST .env (
    IF EXIST .env.example (
        echo.
        echo  [WARN] .env not found. Copying from .env.example...
        copy .env.example .env >nul
        echo  [ACTION REQUIRED] Open .env and add your GROQ_API_KEY!
        echo  Get a free key at: https://console.groq.com
        echo.
        notepad .env
        pause
    ) ELSE (
        echo  [WARN] No .env file found. You can enter your API key in the sidebar.
    )
)

REM ── Install / upgrade dependencies ──────────────────────────
echo.
echo  [STEP 1/2] Installing dependencies...
echo  (This may take a few minutes on first run)
echo.
pip install -r requirements.txt --quiet --upgrade

IF ERRORLEVEL 1 (
    echo.
    echo  [ERROR] Dependency installation failed.
    echo  Try running manually: pip install -r requirements.txt
    pause
    exit /b 1
)

echo  [OK] Dependencies ready

REM ── Launch NOVA AI ───────────────────────────────────────────
echo.
echo  [STEP 2/2] Starting NOVA AI...
echo.
echo  ┌─────────────────────────────────────────┐
echo  │  Open your browser to:                  │
echo  │                                         │
echo  │    http://127.0.0.1:7860                │
echo  │                                         │
echo  │  Press Ctrl+C to stop                   │
echo  └─────────────────────────────────────────┘
echo.

python nova_ai.py

IF ERRORLEVEL 1 (
    echo.
    echo  [ERROR] NOVA AI crashed. See error above.
    pause
)