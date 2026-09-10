#!/usr/bin/env bash
set -euo pipefail

echo "==> Final cleanup..."

sudo apt autoremove -y
sudo apt clean

echo
echo "Manual configuration still required:"
echo "  - Keyboard layout"
echo "  - Caps Lock / Ctrl"
echo "  - Compose key -> Right Ctrl"
echo "  - GNOME Online Accounts / Google Drive"
echo "  - OneDrive authentication"
echo "  - OnlyOffice"
echo "  - Zoom"
echo "  - Opera"
