#!/usr/bin/env bash
set -euo pipefail

TMPDIR="$(mktemp -d)"
trap 'rm -rf "$TMPDIR"' EXIT

echo "==> Installing GitKraken..."

wget -q \
    https://release.gitkraken.com/linux/gitkraken-amd64.deb \
    -O "${TMPDIR}/gitkraken.deb"

sudo apt install -y "${TMPDIR}/gitkraken.deb"

# OnlyOffice:
# Download the current official .deb, then:
#   sudo apt install ./onlyoffice-desktopeditors_amd64.deb
#
# Zoom:
# Download the current official .deb, then:
#   sudo apt install ./zoom_amd64.deb
#
# Google Earth:
# wget https://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb
# sudo apt install ./google-earth-stable_current_amd64.deb
#
# Snap examples:
#   sudo snap install emacs --classic
#   sudo snap install raindrop
