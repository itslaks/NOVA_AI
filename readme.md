<div align="center">

<br>

```
  ╔══════════════════════════════════════════════════════════════╗
  ║                                                              ║
  ║      ✦  ✦  ✦     N O V A   A I     ✦  ✦  ✦                  ║
  ║                                                              ║
  ║         Voice Intelligence v12  —  Always Listening         ║
  ║                                                              ║
  ╚══════════════════════════════════════════════════════════════╝
```

<h3>Speak naturally. NOVA listens, thinks, and responds — in under 2 seconds.</h3>

<br>

<p>
  <img src="https://img.shields.io/badge/Python-3.10+-e8a0bf?style=for-the-badge&logo=python&logoColor=white" />
  <img src="https://img.shields.io/badge/Groq-Llama_3.3_70B-c9637c?style=for-the-badge&logo=lightning&logoColor=white" />
  <img src="https://img.shields.io/badge/Whisper-Large_v3-8c3b5a?style=for-the-badge&logo=openai&logoColor=white" />
  <img src="https://img.shields.io/badge/Gradio-4.36+-ff6b9d?style=for-the-badge&logo=gradio&logoColor=white" />
  <img src="https://img.shields.io/badge/Flask-3.0+-e8a0bf?style=for-the-badge&logo=flask&logoColor=white" />
  <img src="https://img.shields.io/badge/SQLite-WAL_Mode-c9637c?style=for-the-badge&logo=sqlite&logoColor=white" />
  <img src="https://img.shields.io/badge/License-MIT-f7d6e8?style=for-the-badge" />
</p>

<p>
  <img src="https://img.shields.io/badge/Platform-Windows_%7C_macOS_%7C_Linux-8c3b5a?flat-square" />
  <img src="https://img.shields.io/badge/Cost-Free_Tier_Available-c9637c?flat-square" />
  <img src="https://img.shields.io/badge/Privacy-Local_First-e8a0bf?flat-square" />
</p>

<br>

**[🚀 Quick Start](#-quick-start)** &nbsp;·&nbsp;
**[🔑 Get API Key](#step-2--get-your-free-groq-api-key)** &nbsp;·&nbsp;
**[⚙️ .env Setup](#-environment-setup--the-env-file)** &nbsp;·&nbsp;
**[🌟 Features](#-features)** &nbsp;·&nbsp;
**[🔧 How It Works](#-how-it-works)** &nbsp;·&nbsp;
**[🎤 Voices](#-voices)** &nbsp;·&nbsp;
**[🛠 Troubleshooting](#-troubleshooting)** &nbsp;·&nbsp;
**[🤝 Contributing](#-contributing)**

<br>

</div>

---

## ✨ What is NOVA AI?

**NOVA AI** is a fully local, real-time voice assistant that runs entirely on your machine. It combines the world's fastest AI inference engine (Groq) with Microsoft's Neural TTS voices, live web search, and a stunning browser-based UI — all packaged in a single Python file.

Unlike cloud assistants that send your data to remote servers, NOVA stores every conversation in a local SQLite database. Your words stay on your machine.

```
 You speak  →  Whisper transcribes  →  Llama 3.3 reasons  →  NOVA speaks back
              (< 500 ms)                (< 800 ms)             (< 600 ms)
                              ─────────────────────────
                              Total round-trip: ~1.5 – 2.5 seconds
```

> 💡 **Who is this for?** Developers, researchers, productivity hackers, and anyone who wants a private, fast, voice-first AI without a subscription.

---

## 🌟 Features

<details>
<summary><b>🎙 Voice Interaction — click to expand</b></summary>

- **Wake word activation** — Say *"Hey Nova"* hands-free from anywhere on the page
- **Auto-silence detection** — Sends automatically after 1.5 s of silence, no button needed
- **Real-time waveform** — Animated canvas visualises your voice as you speak
- **Manual override** — Tap 🎙 anytime to stop early and send immediately
- **Countdown timer** — Progress bar shows exactly how long until auto-send
- **Grace period** — 0.6 s minimum prevents accidental triggers; 60 s cap prevents runaway recordings

</details>

<details>
<summary><b>🧠 AI Intelligence — click to expand</b></summary>

- **Llama 3.3 70B Versatile** via Groq — best open-source model for reasoning and conversation
- **Whisper Large v3** — industry-leading accuracy, handles accents, noise, and fast speech
- **Real-time web search** — DuckDuckGo integration, completely free, no key required
- **Live exchange rates** — 3-source cascade: Frankfurter (ECB) → ExchangeRate.host → ExchangeRate-API
- **Smart time awareness** — Injects current date/time only when you ask about it
- **24-turn context window** — Remembers the full thread of your conversation
- **Markdown stripping** — Always returns clean, speakable text (no `**bold**`, `##`, backticks)

</details>

<details>
<summary><b>🔊 Voice Output — click to expand</b></summary>

- **6 Neural voices** — 3 female + 3 male across 4 English accents
- **edge-tts (primary)** — Microsoft Neural, near human-quality
- **gTTS (fallback)** — Switches silently if edge-tts is unavailable
- **Per-voice speed tuning** — Each voice has a custom rate so all sound natural
- **Locale-matched TLD** — gTTS automatically uses co.uk, co.in, com.au per accent

</details>

<details>
<summary><b>💾 Data & Privacy — click to expand</b></summary>

- **100 % local storage** — SQLite on your machine, nothing sent to third parties
- **WAL mode** — Write-Ahead Logging prevents database corruption on crash
- **Session-based IDs** — Each launch creates a unique session (YYYYMMDD_HHMMSS)
- **One-click export** — Download any conversation as a JSON file
- **Clear in-memory** — Wipe the active conversation without touching the database

</details>

<details>
<summary><b>🎨 UI & UX — click to expand</b></summary>

- **Animated orb** — Changes colour and animation per pipeline state
- **Dark / Light theme** — One-click toggle
- **Live transcript panel** — Searchable, copyable conversation log with timestamps
- **Latency chips** — Shows STT / LLM / TTS timing after every response
- **Caption card** — Displays your words and NOVA's reply as text simultaneously
- **Sidebar stats** — Engine, model, status indicator, live clock
- **Fully responsive** — 3-column desktop layout collapses to single column on mobile

</details>

---

## 🚀 Quick Start

> ⏱ From zero to talking with NOVA in about 5 minutes.

### Step 1 — Clone or Download

**Option A — Git:**
```bash
git clone https://github.com/yourusername/nova-ai.git
cd nova-ai
```

**Option B — Download ZIP:**
1. Click the green **Code** button → **Download ZIP**
2. Extract the archive
3. Open a terminal inside the extracted folder

---

### Step 2 — Get Your Free Groq API Key

NOVA uses [Groq](https://groq.com) for both speech-to-text (Whisper) and language generation (Llama). The free tier is generous enough for everyday personal use.

**Step-by-step:**

1. Visit **[console.groq.com](https://console.groq.com)**
2. Click **Sign Up** — Google, GitHub, or email all work
3. After logging in, click **API Keys** in the left sidebar
4. Click **Create API Key**
5. Give it a name like `nova-ai`
6. **Copy the key immediately** — it starts with `gsk_` and is shown only once

> ⚠️ **Store it safely.** If you lose it, create a new one. Never share it, post it publicly, or commit it to git.

**Free tier limits (2025):**

| Model | Requests / minute | Tokens / minute | Tokens / day |
|-------|-------------------|-----------------|--------------|
| Llama 3.3 70B | 30 | 6,000 | 500,000 |
| Whisper Large v3 | 20 | — | 7,200 sec audio |

For normal personal use you will rarely hit these.

---

### Step 3 — Create Your `.env` File

```bash
cp .env.example .env
```

Open `.env` in any text editor and set your key:

```env
GROQ_API_KEY=gsk_your_actual_key_here
```

That single line is the only **required** change. See the [full .env guide](#-environment-setup--the-env-file) for all available options.

---

### Step 4 — Install Dependencies

```bash
pip install -r requirements.txt
```

If you have multiple Python versions:
```bash
pip3 install -r requirements.txt
# or
python -m pip install -r requirements.txt
```

First-time install takes 1–3 minutes. You should see all packages install without errors.

---

### Step 5 — Launch NOVA

**🪟 Windows — double-click:**
```
start.bat
```

**🍎 macOS / 🐧 Linux:**
```bash
chmod +x start.sh
./start.sh
```

**Manual (any platform):**
```bash
python nova_ai.py
```

---

### Step 6 — Open Your Browser

```
http://127.0.0.1:7860
```

The animated NOVA interface appears. Click the orb or say *"Hey Nova"* to begin.

> 💡 **Audio note:** Browsers block autoplay until you interact with the page. Click anywhere once and audio works from then on.

---

## ⚙️ Environment Setup — The `.env` File

### What is a `.env` file?

A `.env` (pronounced "dot-env") file is a plain text file that stores secret values and configuration for your app. It keeps API keys and settings out of your source code, so you can share the code publicly without exposing credentials.

```
nova-ai/
├── nova_ai.py       ← source code (safe to share)
├── .env             ← YOUR secrets (never commit this)
├── .env.example     ← template (safe to commit)
└── .gitignore       ← tells git to ignore .env
```

> 🔒 `.env` is listed in `.gitignore`. Git will never accidentally track it.

---

### Creating Your `.env` File

**macOS / Linux:**
```bash
cp .env.example .env
nano .env          # or: code .env  /  vim .env  /  open -a TextEdit .env
```

**Windows (Command Prompt):**
```bat
copy .env.example .env
notepad .env
```

**Windows (PowerShell):**
```powershell
Copy-Item .env.example .env
notepad .env
```

**Windows (manually):**
1. In the project folder, right-click → **New → Text Document**
2. Name it `.env` — Windows may warn about removing the extension; click **Yes**
3. Open with Notepad and add your configuration

---

### Complete `.env` Reference

Copy this into your `.env` and fill in the values:

```env
# ══════════════════════════════════════════════════════════
#  NOVA AI — Complete Configuration Reference
#  File: .env  (must be in the same folder as nova_ai.py)
# ══════════════════════════════════════════════════════════


# ────────────────────────────────────────────────────────────
#  🔑  GROQ API KEY  ← REQUIRED — app will not start without this
# ────────────────────────────────────────────────────────────
#
#  Where to get it:  https://console.groq.com
#    1. Sign Up (free, no credit card)
#    2. Go to API Keys → Create API Key
#    3. Copy the full key — shown only once
#
#  Format: must start with "gsk_" followed by ~40 characters
#  Example: gsk_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnop
#
GROQ_API_KEY=gsk_your_key_here


# ────────────────────────────────────────────────────────────
#  🌐  FLASK
# ────────────────────────────────────────────────────────────
#
#  FLASK_SECRET_KEY
#  Cryptographically signs Flask session cookies.
#  Any random string works in development.
#  In production, generate a secure one:
#    python -c "import secrets; print(secrets.token_hex(32))"
#
FLASK_SECRET_KEY=change_me_to_a_random_string

#
#  FLASK_ENV
#  Controls Flask's operating mode.
#    development  → Debug info visible, auto-reloader on
#    production   → Errors hidden, optimised for speed
#
FLASK_ENV=development

#
#  FLASK_DEBUG
#  Shows full Python tracebacks in the browser on errors.
#  ⚠️  NEVER set to true in production — it's a security risk.
#    true   → Full error details visible (dev only)
#    false  → Silent errors (safe default)
#
FLASK_DEBUG=false


# ────────────────────────────────────────────────────────────
#  🖥️  GRADIO SERVER
# ────────────────────────────────────────────────────────────
#
#  GRADIO_PORT
#  The local port the browser UI listens on.
#  Default: 7860  →  http://127.0.0.1:7860
#  Change if port 7860 is already occupied on your machine.
#
GRADIO_PORT=7860

#
#  GRADIO_HOST
#  Controls who can connect to NOVA.
#
#    127.0.0.1  → Only your computer (default, most secure)
#    0.0.0.0    → Anyone on your local network
#                 (useful for accessing NOVA from phone/tablet
#                  on the same Wi-Fi — find your PC's local IP
#                  with ipconfig/ifconfig then visit
#                  http://YOUR_IP:7860 from the other device)
#
GRADIO_HOST=127.0.0.1


# ────────────────────────────────────────────────────────────
#  🎙️  AUDIO TUNING  (optional — defaults work for most setups)
#  Remove the # at the start of a line to activate it.
# ────────────────────────────────────────────────────────────
#
#  SILENCE_RMS
#  How loud something must be to count as "speech" (0 – 32768).
#  RMS = Root Mean Square energy of the audio signal.
#
#  Too low  → background noise triggers sends (use higher value)
#  Too high → quiet voices not detected  (use lower value)
#
#  Typical ranges:
#    Quiet room / soft speaker : 100 – 200
#    Normal home environment   : 300 (default)
#    Noisy room / loud fans    : 500 – 800
#
# SILENCE_RMS=300

#
#  SILENCE_SEC
#  How many seconds of silence before auto-sending.
#
#  Too short → cuts you off between sentences
#  Too long  → noticeable lag before NOVA responds
#
#  Typical values:
#    Fast typist who pauses often  : 1.0
#    Normal conversation pace      : 1.5 (default)
#    Slow / deliberate speaker     : 2.0 – 2.5
#
# SILENCE_SEC=1.5

#
#  MAX_REC_SEC
#  Hard limit on recording duration (seconds).
#  Recording stops automatically after this regardless of silence.
#  Increase if you want to give long monologues.
#  Default: 60.0
#
# MAX_REC_SEC=60.0
```

---

### `.env` Quick Reference

| Variable | Required | Default | Description |
|----------|:--------:|---------|-------------|
| `GROQ_API_KEY` | ✅ | — | Groq API key, must start with `gsk_` |
| `FLASK_SECRET_KEY` | No | — | Signs Flask session cookies |
| `FLASK_ENV` | No | `development` | Flask mode |
| `FLASK_DEBUG` | No | `false` | Show error tracebacks |
| `GRADIO_PORT` | No | `7860` | Browser UI port |
| `GRADIO_HOST` | No | `127.0.0.1` | Who can connect |
| `SILENCE_RMS` | No | `300` | Silence energy threshold |
| `SILENCE_SEC` | No | `1.5` | Auto-send delay (seconds) |
| `MAX_REC_SEC` | No | `60.0` | Max recording length |

---

### Common `.env` Scenarios

**Scenario A — Basic local use (most people)**
```env
GROQ_API_KEY=gsk_your_actual_key_here
```
One line. Done.

---

**Scenario B — Port conflict (something else is on 7860)**
```env
GROQ_API_KEY=gsk_your_actual_key_here
GRADIO_PORT=7861
```
Visit `http://127.0.0.1:7861`

---

**Scenario C — Access from phone on same Wi-Fi**
```env
GROQ_API_KEY=gsk_your_actual_key_here
GRADIO_HOST=0.0.0.0
```
Find your computer's local IP, then visit `http://YOUR_IP:7860` on your phone.

---

**Scenario D — Noisy environment (too many false sends)**
```env
GROQ_API_KEY=gsk_your_actual_key_here
SILENCE_RMS=600
SILENCE_SEC=2.0
```

---

**Scenario E — Quiet speaker / soft voice**
```env
GROQ_API_KEY=gsk_your_actual_key_here
SILENCE_RMS=150
SILENCE_SEC=1.2
```

---

### Verifying Your `.env` Is Working

After launching, check the terminal. A working setup looks like:

```
  ✓  Groq key loaded (****mnop)
  ✓  Database ready → nova_conversations.db
  ─────────────────────────────────────────
  READY — http://127.0.0.1:7860
```

If you see `GROQ_API_KEY not set`, check:
- The file is named exactly `.env` (not `.env.txt`)
- It lives in the same folder as `nova_ai.py`
- The key starts with `gsk_` with no extra spaces

---

## 🔧 How It Works

### The 7-Stage Voice Pipeline

```
┌─────────────────────────────────────────────────────────────────────┐
│                          NOVA AI PIPELINE                           │
├──────────────┬──────────────────────────────────────────────────────┤
│  STAGE       │  WHAT HAPPENS                                        │
├──────────────┼──────────────────────────────────────────────────────┤
│  1. CAPTURE  │  PyAudio opens mic at 16 kHz, 16-bit mono PCM        │
│              │  RMS energy measured per 1024-sample chunk            │
│              │  Silence detected when RMS < 300 for 1.5 s           │
├──────────────┼──────────────────────────────────────────────────────┤
│  2. STT      │  WAV bytes sent to Groq Whisper Large v3              │
│              │  Returns text transcript in < 500 ms                  │
│              │  English forced; handles accents and background noise  │
├──────────────┼──────────────────────────────────────────────────────┤
│  3. ENRICH   │  Time keywords?  → inject current datetime            │
│              │  Currency query? → fetch live exchange rate (3 APIs)  │
│              │  General query?  → DuckDuckGo web search (free)       │
├──────────────┼──────────────────────────────────────────────────────┤
│  4. LLM      │  System prompt + 24-turn history + enrichment         │
│              │  sent to Groq Llama 3.3 70B                           │
│              │  Returns clean text reply in < 800 ms                 │
├──────────────┼──────────────────────────────────────────────────────┤
│  5. TTS      │  edge-tts generates MP3 (falls back to gTTS)          │
│              │  Per-voice speed rates applied                        │
│              │  File saved to OS temp directory                      │
├──────────────┼──────────────────────────────────────────────────────┤
│  6. PLAY     │  Browser receives file path via Gradio audio output   │
│              │  Audio auto-plays; orb animates; transcript updates   │
│              │  Latency chips show STT / LLM / TTS / Total ms        │
├──────────────┼──────────────────────────────────────────────────────┤
│  7. PERSIST  │  User message + NOVA reply written to SQLite          │
│              │  In-memory conversation updated for next turn context │
└──────────────┴──────────────────────────────────────────────────────┘
```

### Real-Time Search Logic

NOVA automatically decides whether to search the web based on your query:

| Trigger Keywords | Action Taken |
|-----------------|--------------|
| `today`, `now`, `current`, `latest`, `recent` | DuckDuckGo web search |
| `price`, `stock`, `weather`, `forecast` | DuckDuckGo web search |
| `dollar`, `rupee`, `euro`, `exchange rate`, `forex` | Fetch live exchange rate |
| `news`, `happening`, `breaking`, `event` | DuckDuckGo web search |
| `who won`, `who is`, `what happened`, `when did` | DuckDuckGo web search |
| `2024`, `2025`, `2026` | DuckDuckGo web search |
| `time`, `date`, `day`, `clock`, `morning` | Inject current datetime |

If no trigger matches, NOVA answers from training knowledge — faster with no external calls.

---

## 📁 Project Structure

```
nova-ai/
│
├── nova_ai.py                   ← The entire application (single file)
│   ├── Logging & Config         ← Constants, icons, log helpers
│   ├── Database (SQLite)        ← Schema, CRUD, WAL mode setup
│   ├── Groq Client              ← Lazy singleton, key validation
│   ├── Conversation             ← In-memory store + DB write-through
│   ├── Recorder                 ← PyAudio capture, silence detection
│   ├── transcribe()             ← Whisper Large v3 via Groq API
│   ├── llm()                    ← Llama 3.3 70B + context enrichment
│   ├── tts()                    ← edge-tts with gTTS fallback
│   ├── web_search()             ← DuckDuckGo free search
│   ├── get_exchange_rate()      ← 3-source currency API cascade
│   ├── Pipeline functions       ← run_voice_pipe, run_text_pipe
│   ├── handle_cmd()             ← Command bus dispatcher
│   ├── CSS (~600 lines)         ← Custom dark/light theming
│   ├── JavaScript (~400 lines)  ← UI logic, wake word, waveform
│   ├── HTML                     ← 3-panel layout structure
│   └── Flask Blueprint          ← /nova/ route + iframe embed
│
├── requirements.txt             ← All Python dependencies
├── .env                         ← YOUR config (create from .env.example)
├── .env.example                 ← Template — safe to commit to git
├── .gitignore                   ← Excludes .env, .db, audio files
├── start.bat                    ← Windows one-click launcher
├── start.sh                     ← macOS / Linux one-click launcher
├── README.md                    ← This file
│
└── nova_conversations.db        ← Auto-created SQLite database
    └── messages                 ← All conversation history
```

---

## 📦 Dependencies

| Package | Min Version | Purpose |
|---------|-------------|---------|
| `flask` | 3.0.0 | HTTP server and Blueprint routing |
| `gradio` | 4.36.0 | Browser-based UI framework |
| `groq` | 0.9.0 | Whisper STT + Llama LLM API client |
| `edge-tts` | 6.1.9 | Microsoft Neural voice synthesis |
| `gTTS` | 2.5.0 | Google TTS (automatic fallback) |
| `pyaudio` | 0.2.14 | Real-time microphone capture |
| `duckduckgo-search` | 6.1.0 | Free real-time web search |
| `requests` | 2.31.0 | HTTP calls to exchange rate APIs |

All standard library modules (`sqlite3`, `threading`, `asyncio`, `wave`, `json`, `re`, etc.) are built into Python.

---

## 🎤 Voices

NOVA ships with 6 Microsoft Neural voices. Switch instantly from the sidebar; takes effect on the next response.

| Voice | Gender | Accent | Speed | Edge TTS Identifier |
|-------|--------|--------|-------|---------------------|
| **Aria** | Female | American English | +5% | `en-US-AriaNeural` |
| **Sonia** | Female | British English | +0% | `en-GB-SoniaNeural` |
| **Neerja** | Female | Indian English | +3% | `en-IN-NeerjaNeural` |
| **Guy** | Male | American English | +0% | `en-US-GuyNeural` |
| **Ryan** | Male | British English | −3% | `en-GB-RyanNeural` |
| **William** | Male | Australian English | +2% | `en-AU-WilliamNeural` |

---

## 🌐 Currency Support

Ask in plain English. NOVA handles 50+ currency pairs:

```
"What's the dollar to rupee rate?"
"How much is 500 euros in US dollars?"
"Convert 1000 Singapore dollars to INR"
"What's the current GBP to AUD exchange rate?"
```

**Supported codes:** `USD` `EUR` `GBP` `INR` `JPY` `CNY` `SGD` `AUD` `CAD` `CHF` `HKD` `NZD` `ZAR` `RUB` `BRL` `MXN` `SAR` `AED` `TRY` `KRW` `THB` `MYR` `IDR` `PHP` `PKR` `BDT` `EGP` `NGN` `KES` `ILS` `DKK` `NOK` `SEK` `PLN` `CZK` `HUF` `RON` `ARS` `CLP` `COP` `PEN` and more.

**Data source cascade:**
1. **Frankfurter** (ECB data) — most authoritative for EUR pairs
2. **ExchangeRate.host** — broad coverage backup
3. **ExchangeRate-API** — final fallback

---

## ⌨️ Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| `SPACE` | Toggle microphone (page body must be focused) |
| `ESC` | Cancel active recording |
| `Ctrl + Enter` | Send typed message |
| `Cmd + Enter` | Send typed message (macOS) |
| `Enter` (in text box) | Send typed message |

---

## 🖥️ Platform Setup

### 🪟 Windows

```bash
# 1. Install Python 3.10+ from https://python.org
#    ✅ Check "Add Python to PATH" during install

# 2. Install dependencies
pip install -r requirements.txt

# If PyAudio fails:
pip install pipwin
pipwin install pyaudio

# Then re-run:
pip install -r requirements.txt
```

### 🍎 macOS

```bash
# 1. Install Homebrew (if not installed)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Install PortAudio (required by PyAudio)
brew install portaudio

# 3. Install Python dependencies
pip3 install -r requirements.txt
```

Also allow microphone access: **System Preferences → Security & Privacy → Microphone → Terminal ✅**

### 🐧 Ubuntu / Debian

```bash
sudo apt-get update
sudo apt-get install python3-pyaudio portaudio19-dev python3-pip
pip3 install -r requirements.txt
```

### 🐧 Fedora / RHEL

```bash
sudo dnf install python3-pyaudio portaudio-devel
pip3 install -r requirements.txt
```

---

## 🗄️ Database

Every conversation is automatically saved to `nova_conversations.db` in your project folder.

### Schema

```sql
CREATE TABLE messages (
    id        INTEGER PRIMARY KEY AUTOINCREMENT,
    session   TEXT    NOT NULL,   -- "20250228_143022"
    role      TEXT    NOT NULL,   -- "user" or "assistant"
    content   TEXT    NOT NULL,   -- message text (max 8192 chars)
    ts        TEXT    NOT NULL    -- "HH:MM:SS"
);
CREATE INDEX idx_session ON messages(session);
```

### Browsing Your Data

```bash
sqlite3 nova_conversations.db

# List all sessions
SELECT DISTINCT session FROM messages;

# Read a session
SELECT role, ts, substr(content,1,80) FROM messages WHERE session='20250228_143022';

# Count all messages
SELECT COUNT(*) FROM messages;
```

### Exporting

Click **↓ Save** in the transcript panel to download the current session as JSON. To export everything:

```python
import sqlite3, json
con = sqlite3.connect("nova_conversations.db")
rows = con.execute("SELECT * FROM messages ORDER BY id").fetchall()
with open("all_conversations.json", "w") as f:
    json.dump([{"id":r[0],"session":r[1],"role":r[2],"content":r[3],"ts":r[4]} for r in rows], f, indent=2)
```

---

## 🛠️ Troubleshooting

### API Key Problems

<details>
<summary><b>"GROQ_API_KEY not set" at startup</b></summary>

NOVA can't find your `.env` file or the key inside it.

**Check list:**
1. File is named `.env` — not `.env.txt`, not `env`
2. File is in the same folder as `nova_ai.py`
3. The line reads exactly `GROQ_API_KEY=gsk_...` (no spaces around `=`)
4. Verify: `cat .env` on Mac/Linux — should print your key

**Alternative:** Enter the key directly in the sidebar and click **Apply Key**.

</details>

<details>
<summary><b>"Invalid API key format" error</b></summary>

Key must start with `gsk_`. Go to [console.groq.com](https://console.groq.com), create a new key, and copy the full string.

</details>

<details>
<summary><b>Rate limited (429 error)</b></summary>

Free tier limit hit. Wait 10–60 seconds. The limit resets per minute. For heavier use, check Groq's paid plans.

</details>

---

### Microphone Problems

<details>
<summary><b>"No microphone found" error</b></summary>

**Windows:** Settings → Privacy → Microphone → Allow apps ✅, then:
```bash
pip uninstall pyaudio
pip install pipwin && pipwin install pyaudio
```

**macOS:** System Preferences → Security & Privacy → Microphone → Terminal ✅, then:
```bash
brew install portaudio && pip install pyaudio --force-reinstall
```

**Linux:**
```bash
sudo apt-get install python3-pyaudio portaudio19-dev
pip3 install pyaudio --force-reinstall
```

</details>

<details>
<summary><b>NOVA cuts me off mid-sentence</b></summary>

Increase the silence delay in `.env`:
```env
SILENCE_SEC=2.5
SILENCE_RMS=500
```

</details>

<details>
<summary><b>NOVA doesn't detect my voice</b></summary>

Lower the sensitivity in `.env`:
```env
SILENCE_RMS=100
```

</details>

---

### Audio Playback Problems

<details>
<summary><b>No sound from NOVA</b></summary>

1. **Click anywhere on the page first** — browsers require a user gesture before audio plays
2. Check system volume is not muted
3. Check the browser tab isn't muted (right-click tab → Unmute)

</details>

<details>
<summary><b>edge-tts fails</b></summary>

```bash
pip install edge-tts --upgrade
```

NOVA silently falls back to gTTS if edge-tts keeps failing.

</details>

---

### Network / Port Problems

<details>
<summary><b>"Port 7860 already in use"</b></summary>

Change the port in `.env`:
```env
GRADIO_PORT=7861
```

Or kill the existing process:

Windows:
```bat
netstat -ano | findstr :7860
taskkill /PID <NUMBER> /F
```

macOS / Linux:
```bash
lsof -ti:7860 | xargs kill -9
```

</details>

<details>
<summary><b>Wake word "Hey Nova" not working</b></summary>

- Use **Chrome or Edge** — Firefox has limited Web Speech API support
- Allow microphone permission when prompted
- Wait for the badge: *'Say "Hey Nova" to activate'*
- Speak clearly: "Hey Nova" — brief pause — your question

</details>

---

## 🔌 Flask Blueprint Integration

Embed NOVA into any existing Flask app:

```python
from flask import Flask
from nova_ai import nova_ai

app = Flask(__name__)
app.secret_key = "your-secret-key"

# NOVA available at /nova/
app.register_blueprint(nova_ai, url_prefix='/nova')

if __name__ == '__main__':
    app.run(port=5000)
```

Gradio starts lazily on first request to `/nova/`.

---

## 🤝 Contributing

```bash
# 1. Fork on GitHub, then clone your fork
git clone https://github.com/YOUR_USERNAME/nova-ai.git
cd nova-ai

# 2. Create a branch
git checkout -b feature/your-feature-name

# 3. Make changes, test them
python nova_ai.py

# 4. Commit
git commit -m "feat: describe your change"

# 5. Push and open a Pull Request
git push origin feature/your-feature-name
```

**Ideas welcome:** streaming LLM→TTS, additional languages, Ollama/local LLM support, custom themes, PWA mode, conversation analytics.

---

## 📄 License

MIT License — free to use, modify, and distribute. Attribution appreciated but not required.

---

## 🙏 Acknowledgements

| Project | Purpose | Link |
|---------|---------|------|
| **Groq** | Ultra-fast AI inference | [groq.com](https://groq.com) |
| **Meta Llama** | Language model | [llama.meta.com](https://llama.meta.com) |
| **OpenAI Whisper** | Speech recognition | [github.com/openai/whisper](https://github.com/openai/whisper) |
| **Gradio** | Browser UI | [gradio.app](https://gradio.app) |
| **edge-tts** | Microsoft Neural TTS | [github.com/rany2/edge-tts](https://github.com/rany2/edge-tts) |
| **duckduckgo-search** | Free web search | [github.com/deedy5/duckduckgo_search](https://github.com/deedy5/duckduckgo_search) |
| **Frankfurter** | ECB exchange rates | [frankfurter.app](https://frankfurter.app) |
| **Flask** | Python web framework | [flask.palletsprojects.com](https://flask.palletsprojects.com) |

---

<div align="center">

<br>

```
  ╔════════════════════════════════════════════╗
  ║                                            ║
  ║   ✦  Built with Python, patience, and ☕   ║
  ║                                            ║
  ║   NOVA AI — Your voice deserves to be      ║
  ║              heard.                        ║
  ║                                            ║
  ╚════════════════════════════════════════════╝
```

**[⬆ Back to top](#)**

</div>