#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing OneDrive..."
sudo apt install -y onedrive

echo
echo "OneDrive requires interactive authentication."
echo "Run:"
echo "    onedrive"
echo
echo "Then:"
echo "    onedrive --synchronize"
echo
echo "Finally:"
echo "    systemctl --user enable --now onedrive"
echo
