# 🎬 VRChat Content Creator Studio - Download & Run Guide

## ⚡ QUICK START (5 Minutes)

### Step 1: Download This Repository

**Option A - Using Git (Recommended):**
```bash
git clone https://github.com/foundhimyesterday/vrchat-content-studio.git
cd vrchat-content-studio
```

**Option B - Download as ZIP:**
1. Click the green **Code** button on GitHub
2. Click **Download ZIP**
3. Extract the folder anywhere
4. Open Command Prompt/PowerShell in that folder

---

## 🐍 Step 2: Install Python 3.13+

Download: https://www.python.org/downloads/

✅ **IMPORTANT:** Check "Add Python to PATH" during installation

Verify:
```bash
python --version
```

---

## 📦 Step 3: Run Setup

In the project folder, run:

```bash
python setup.py
```

This will:
- ✅ Check Python version
- ✅ Check dependencies
- ✅ Install missing packages
- ✅ Verify VRChat installation

---

## 🎮 Step 4: Launch the Tool

```bash
python main_gui.py
```

The GUI will open. Now:
1. **Launch VRChat** (the game)
2. In Content Studio, go to **File > Connect to VRChat**
3. Wait for 🟢 Connected status
4. Select a module (ESP, Freecam, Pose Cloner)
5. Adjust settings and enjoy!

---

## 📂 What's in the Folder

```
vrchat-content-studio/
├── 📄 README.md                    ← Full documentation
├── 📄 DOWNLOAD_AND_RUN.md         ← This file
├── 📄 LICENSE                      ← Legal info
├── 📄 requirements.txt             ← Dependencies
│
├── 🐍 main_gui.py                 ← RUN THIS FILE
├── 🐍 setup.py                    ← Run first: python setup.py
│
├── 🔌 Core Modules:
│   ├── memory_reader.py           ← Memory scanning
│   ├── esp.py                     ← Mini-map visualization
│   ├── freecam.py                 ← Camera controller
│   ├── pose_cloner.py             ← Avatar cloning
│   └── overlay.py                 ← Overlay window
│
├── 🌍 Advanced:
│   ├── world_inspector.py         ← World browser
│   ├── stream_deck_server.py      ← Remote control
│   └── examples.py                ← Usage examples
│
└── ⚙️ Configuration:
    ├── config.py                  ← Settings
    └── __init__.py                ← Package init
```

---

## ⚠️ Common Issues & Fixes

### "Python not found"
```bash
# Reinstall Python with "Add to PATH" checked
# Then restart Command Prompt
```

### "ModuleNotFoundError: No module named 'PySide6'"
```bash
pip install --upgrade pip
pip install -r requirements.txt
```

### "Connection failed to VRChat"
- Make sure VRChat.exe is running
- Run Command Prompt as Administrator
- Check Task Manager (Ctrl+Shift+Esc) for VRChat process

### "Permission Denied"
- Right-click Command Prompt
- Select "Run as Administrator"

---

## 🎯 Module Guide

### 📍 ESP (Entity Scene Preview)
- **What it does:** Shows a mini-map with all players
- **Use for:** Framing group shots, understanding scene composition
- **How to use:**
  1. Click the ESP tab
  2. Players appear on the mini-map in real-time
  3. Green = close, Orange = medium, Red = far
  4. Click players in the list to see distance

### 🎥 Freecam (Cinematic Camera)
- **What it does:** Virtual camera for smooth camera movements
- **Use for:** Pre-planning camera shots, creating dolly shots
- **How to use:**
  1. Click the Freecam tab
  2. Use speed slider to adjust movement speed
  3. Click "Add Keyframe" at current position
  4. Move camera to new position
  5. Click "Add Keyframe" again
  6. Click "▶ Play" to animate between keyframes

### 👥 Pose Cloner (Avatar Cloning)
- **What it does:** Creates synchronized copies of avatars
- **Use for:** Multi-character staging, group choreography
- **How to use:**
  1. Click the Pose Cloner tab
  2. Select source avatar from dropdown
  3. Click "Create Clone"
  4. Check "Sync in Real-time" to keep it synchronized
  5. Record with OBS/Streamlabs

---

## 🚀 Advanced Usage

### Stream Deck Integration (Optional)

Start the WebSocket server:
```bash
python stream_deck_server.py
```

Then use a Stream Deck macro pad to trigger actions like:
- Toggle ESP
- Play/stop freecam
- Create clones

### Command Line Examples

```bash
# Run memory reading demo
python examples.py basic

# Start Stream Deck server
python examples.py streamdeck

# Launch full GUI
python examples.py gui
```

---

## 📋 Safe Usage Guidelines

✅ **DO:**
- Use for machinima production
- Plan camera movements
- Understand scene composition
- Record creative footage

❌ **DON'T:**
- Harass or track players
- Violate VRChat Terms of Service
- Share player locations
- Use for griefing

**Remember:** This is a creative tool. Respect other players and use it responsibly. 🎬✨

---

## 📞 Support

If you have issues:

1. **Check README.md** for full documentation
2. **Run setup.py** to verify everything
3. **Check the Troubleshooting section** above
4. **Make sure VRChat is running** before connecting
5. **Run as Administrator** for memory access

---

**Version:** 1.0.0  
**Python Required:** 3.13+  
**License:** MIT with ethical usage clause  
**Made for:** Machinima artists and streamers 🎬
