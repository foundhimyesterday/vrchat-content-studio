````markdown
# VRChat Content Creator Studio

A professional-grade, read-only memory inspection tool for machinima artists and streamers. Provides real-time visualization of VRChat scene data without modifying game state.

## 🎬 Features

### 📍 Entity Scene Preview (ESP)
- **Mini-Map Display** - Top-down 2D view of player positions
- **Distance-Coded Colors** - Green (close), Orange (medium), Red (far)
- **Player List** - Sortable player registry with distance filtering
- **Real-time Updates** - 100ms refresh rate for smooth visualization

### 🎥 Cinematic Freecam
- **Virtual Camera** - Detached camera for smooth dolly shots
- **Keyframe Recording** - Record camera positions and rotations
- **Playback Animation** - Linear interpolation between keyframes
- **FOV Control** - Adjustable field of view (15-120°)
- **Speed Ramping** - Customizable movement speed

### 👥 Avatar Pose Cloner
- **Skeleton Extraction** - Read bone transforms from avatars
- **Dummy Clones** - Create synchronized local copies
- **Real-time Sync** - Keep clones in sync with source avatars
- **Multi-Character Staging** - Perfect for group shots

### 🌍 World Properties Viewer
- **GameObject Inspector** - Browse scene hierarchy
- **Component Inspector** - Read-only component properties
- **Property Filtering** - Search and filter by name/type

### 💻 Stream Deck Integration
- **WebSocket Server** - Control modules remotely
- **Hands-free Control** - Trigger actions from macro pads
- **Extensible API** - Easy to add custom commands

## ⚙️ Installation

### Requirements
- Python 3.13+
- VRChat installed (default Steam directory)
- Windows 10+ or compatible OS with pymem support

### Setup

```bash
# Clone the repository
git clone https://github.com/foundhimyesterday/vrchat-content-studio.git
cd vrchat-content-studio

# Install dependencies
pip install -r requirements.txt

# Run the application
python main_gui.py
```

## 🚀 Usage

1. **Launch VRChat** - Start the game and load a world
2. **Run Content Studio** - Execute `python main_gui.py`
3. **Connect** - Click "File > Connect to VRChat"
4. **Select Module** - Choose ESP, Freecam, or Pose Cloner
5. **Configure** - Adjust sliders and settings as needed
6. **Record** - Screen-record your footage with overlay enabled

## 📋 Project Structure

```
vrchat-content-studio/
├── requirements.txt          # Python dependencies
├── memory_reader.py          # Memory scanning engine
├── esp.py                    # Entity Scene Preview module
├── freecam.py               # Cinematic camera controller
├── pose_cloner.py           # Avatar cloning system
├── overlay.py               # Transparent overlay window
├── main_gui.py              # Main application (run this)
├── stream_deck_server.py    # WebSocket API (optional)
├── world_inspector.py       # World properties viewer (optional)
└── README.md                # This file
```

## 🔒 Safe Usage Guidelines

### ✅ What This Tool IS:
- Educational memory inspection tool
- Creative workflow enhancement
- Non-invasive scene visualization
- **READ-ONLY** - No game memory modification

### ❌ What This Tool IS NOT:
- Anti-cheat bypass
- Gameplay manipulation tool
- Player tracking/harassment enabler
- Network interceptor

### ⚠️ Important Reminders

**This tool is designed for:**
1. Machinima production and storytelling
2. Camera movement pre-visualization
3. Scene composition and framing
4. Professional streaming workflows

**You are responsible for:**
1. Complying with VRChat's Terms of Service
2. Respecting other players' experiences
3. Using the tool ethically and legally
4. Obtaining consent when recording others

**Prohibited Uses:**
- Griefing or harassment
- Bypassing friend groups/privacy settings
- Stealing avatar designs
- Any activity that disrupts gameplay
- Violating local laws or regulations

## 🛠️ Module Reference

### MemoryReader (`memory_reader.py`)
```python
reader = MemoryReader()
reader.connect()  # Attach to VRChat.exe

players = reader.get_all_players_data()
local = reader.get_local_player_data()
world = reader.get_world_data()

reader.disconnect()
```

### ESPModule (`esp.py`)
- Real-time player position tracking
- Distance calculation and sorting
- Color-coded distance visualization
- Toggleable features via sliders

### FreecamPanel (`freecam.py`)
```python
camera = FreecamController()
camera.add_keyframe(time_ms, position, rotation, fov)
camera.play_keyframes()
camera.move_forward(distance)
camera.rotate_yaw(degrees)
```

### PoseClonerPanel (`pose_cloner.py`)
- Select source avatar
- Create independent clone
- Sync skeleton in real-time
- Toggle clone visibility

## 🔧 Advanced Configuration

### Pattern-Based Memory Scanning
To make the tool version-resilient:

```python
# Find address via pattern scanning instead of hardcoding
pattern = b'\x48\x8B\x45\xF8'  # Example x64 pattern
mask = 'xxxx'
address = reader.scan_pattern(pattern, mask)
```

### Custom Memory Addresses
Edit offsets in `memory_reader.py` based on your VRChat version:

```python
PLAYER_MANAGER_OFFSET = 0x12345678
LOCAL_PLAYER_OFFSET = 0x87654321
```

## 📡 WebSocket API (Optional)

Start the Stream Deck server:

```bash
python stream_deck_server.py --port 9001
```

Send commands:

```json
{
  "action": "esp_toggle",
  "params": {"enabled": true}
}
```

## 🐛 Troubleshooting

### Connection Failed
- Ensure VRChat.exe is running
- Check Windows Task Manager for process
- Try running as Administrator
- Verify pymem is properly installed

### No Players Detected
- Memory addresses may have changed with VRChat update
- Run pattern scanning to find new addresses
- Check `memory_reader.py` for implementation status

### Overlay Not Showing
- Check if window manager supports layered windows
- Verify graphics drivers are up to date
- Try toggling "Show Overlay" multiple times

## 🤝 Contributing

Improvements welcome! Focus areas:
- Spline interpolation for smoother camera paths
- Bone visualization for ESP
- Advanced filtering options
- Performance optimization

## ⚖️ Legal & Ethical Statement

This tool is provided **AS-IS** for educational purposes. Users are solely responsible for their actions. The authors assume no liability for misuse.

By using this tool, you acknowledge:
- You will comply with VRChat's Terms of Service
- You will not use this for harassment or griefing
- You respect other players' privacy and experiences
- You understand the legal implications of reverse engineering

**Remember:** Just because you *can* read memory doesn't mean you *should*. Use this responsibly. 🎬✨

## 📄 License

MIT License - See LICENSE file for details

## 🙋 Support

For issues or questions:
1. Check the Troubleshooting section
2. Review `memory_reader.py` comments
3. Check VRChat version compatibility
4. Open an issue with full error logs

---

**VRChat Content Creator Studio** - Empowering machinima artists since 2026 🎬
````
