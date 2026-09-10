#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing desktop applications and utilities..."

sudo apt install -y \
    gparted \
    plocate \
    lm-sensors \
    htop \
    mdbtools \
    imagemagick \
    smartmontools \
    digikam \
    gnome-control-center \
    gnome-online-accounts

echo "==> Removing LibreOffice..."
sudo apt purge -y 'libreoffice*'
sudo apt autoremove -y

echo "==> Installing LibreOffice Draw..."
sudo apt install -y libreoffice-draw

# Keyboard:
# Configure interactively in Settings:
#   - Keyboard layout
#   - Caps Lock / Ctrl
#   - Compose key -> Right Ctrl
#
# Do not use setxkbmap under Wayland.
#
# Google Drive / GNOME Online Accounts:
#   XDG_CURRENT_DESKTOP=GNOME gnome-control-center
