#!/bin/bash

clear
echo "Installing MyTermuxPro..."

pkg update -y
pkg install figlet toilet lolcat ruby -y

# Make banner executable
chmod +x banner.sh

# Auto-run banner on Termux start
if ! grep -q "MyTermuxPro/banner.sh" ~/.bashrc; then
    echo "bash ~/MyTermuxPro/banner.sh" >> ~/.bashrc
fi

echo "Installation Complete ✅"
echo "Restart Termux 🔁"
