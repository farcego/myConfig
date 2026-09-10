#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing Zotero repository..."

wget -qO- \
    https://raw.githubusercontent.com/retorquere/zotero-deb/master/install.sh \
    | sudo bash

sudo apt update

echo "==> Installing Zotero..."
sudo apt install -y zotero
