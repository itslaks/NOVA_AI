#!/usr/bin/env bash
# ════════════════════════════════════════════════════════════
#  NOVA AI — macOS / Linux Quick Start Script
#  Usage: chmod +x start.sh && ./start.sh
# ════════════════════════════════════════════════════════════

set -e

# ── Colors ───────────────────────────────────────────────────
PINK='\033[38;5;213m'
ROSE='\033[38;5;205m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
RESET='\033[0m'
BOLD='\033[1m'

echo ""
echo -e "${PINK}${BOLD}"
echo "  ╔══════════════════════════════════════════════════════╗"
echo "  ║                                                      ║"
echo "  ║        ✦  NOVA AI  — Voice Intelligence v12          ║"
echo "  ║                                                      ║"
echo "  ╚══════════════════════════════════════════════════════╝"
echo -e "${RESET}"

# ── Check Python ─────────────────────────────────────────────
if ! command -v python3 &>/dev/null; then
    echo -e "${RED}[ERROR] Python 3 not found.${RESET}"
    echo "Install from https://python.org or via your package manager:"
    echo "  macOS:  brew install python"
    echo "  Ubuntu: sudo apt install python3 python3-pip"
    exit 1
fi

PYTHON_VERSION=$(python3 --version 2>&1)
echo -e "${GREEN}[OK]${RESET} $PYTHON_VERSION"

# ── Check .env ────────────────────────────────────────────────
if [ ! -f ".env" ]; then
    if [ -f ".env.example" ]; then
        echo -e "${YELLOW}[WARN]${RESET} .env not found. Creating from .env.example..."
        cp .env.example .env
        echo ""
        echo -e "${YELLOW}[ACTION REQUIRED]${RESET} Open .env and add your GROQ_API_KEY"
        echo "  Get a free key at: https://console.groq.com"
        echo ""
        # Open in default editor if available
        if command -v nano &>/dev/null; then
            read -p "  Open .env in nano now? (y/n): " OPEN_ENV
            if [ "$OPEN_ENV" = "y" ]; then
                nano .env
            fi
        fi
    else
        echo -e "${YELLOW}[WARN]${RESET} No .env file. You can enter your API key in the sidebar."
    fi
fi

# ── Install dependencies ──────────────────────────────────────
echo ""
echo -e "${BOLD}[STEP 1/2]${RESET} Installing dependencies..."
echo "  (First run may take a few minutes)"

pip3 install -r requirements.txt --quiet --upgrade

echo -e "${GREEN}[OK]${RESET} Dependencies ready"

# ── PyAudio note (macOS) ──────────────────────────────────────
if [[ "$OSTYPE" == "darwin"* ]]; then
    if ! python3 -c "import pyaudio" &>/dev/null; then
        echo ""
        echo -e "${YELLOW}[NOTE]${RESET} PyAudio requires PortAudio on macOS:"
        echo "  brew install portaudio"
        echo "  pip3 install pyaudio"
    fi
fi

# ── Launch ────────────────────────────────────────────────────
echo ""
echo -e "${BOLD}[STEP 2/2]${RESET} Starting NOVA AI..."
echo ""
echo -e "${PINK}  ┌─────────────────────────────────────────┐${RESET}"
echo -e "${PINK}  │  Open your browser to:                  │${RESET}"
echo -e "${PINK}  │                                         │${RESET}"
echo -e "${PINK}  │    http://127.0.0.1:7860                │${RESET}"
echo -e "${PINK}  │                                         │${RESET}"
echo -e "${PINK}  │  Press Ctrl+C to stop                   │${RESET}"
echo -e "${PINK}  └─────────────────────────────────────────┘${RESET}"
echo ""

python3 nova_ai.py