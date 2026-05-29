#!/bin/bash
# VRChat Content Creator Studio - Quick Run Script (Linux/Mac)

echo ""
echo "╔════════════════════════════════════════════════════════════╗"
echo "║   VRChat Content Creator Studio                             ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""
echo "🎮 Make sure VRChat is running!"
echo ""
echo "Launching application..."
echo ""

python3 main_gui.py

if [ $? -ne 0 ]; then
    echo ""
    echo "❌ Error: Could not run the application"
    echo ""
    echo "Troubleshooting:"
    echo "1. Make sure Python 3.13+ is installed"
    echo "2. Run: python3 setup.py"
    echo "3. Run: pip3 install -r requirements.txt"
    echo "4. Make sure VRChat is running"
    echo ""
fi
