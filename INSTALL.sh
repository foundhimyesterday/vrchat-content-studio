#!/bin/bash
# VRChat Content Creator Studio - Linux/Mac Installation Script

echo ""
echo "╔════════════════════════════════════════════════════════════╗"
echo "║   VRChat Content Creator Studio - Installation              ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed"
    echo ""
    echo "Please install Python 3.13+ from: https://www.python.org/downloads/"
    echo ""
    exit 1
fi

echo "✅ Python found"
python3 --version
echo ""

# Upgrade pip
echo "📦 Upgrading pip..."
python3 -m pip install --upgrade pip
echo ""

# Install requirements
echo "📦 Installing dependencies..."
pip3 install -r requirements.txt
echo ""

if [ $? -ne 0 ]; then
    echo "❌ Installation failed"
    exit 1
fi

echo "✅ Installation complete!"
echo ""
echo "🚀 To run the application:"
echo "   python3 main_gui.py"
echo ""
echo "🎮 Make sure VRChat is running first!"
echo ""
