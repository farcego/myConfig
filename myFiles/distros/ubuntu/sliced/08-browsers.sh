#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing Brave Beta..."

sudo curl -fsSLo \
    /usr/share/keyrings/brave-browser-beta-archive-keyring.gpg \
    https://brave-browser-apt-beta.s3.brave.com/brave-browser-beta-archive-keyring.gpg

sudo curl -fsSLo \
    /etc/apt/sources.list.d/brave-browser-beta.sources \
    https://brave-browser-apt-beta.s3.brave.com/brave-browser.sources

sudo apt update
sudo apt install -y brave-browser-beta

echo "==> Installing Brave Nightly..."

sudo curl -fsSLo \
    /usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg \
    https://brave-browser-apt-nightly.s3.brave.com/brave-browser-nightly-archive-keyring.gpg

sudo curl -fsSLo \
    /etc/apt/sources.list.d/brave-browser-nightly.sources \
    https://brave-browser-apt-nightly.s3.brave.com/brave-browser.sources

sudo apt update
sudo apt install -y brave-browser-nightly

# Opera:
# Install manually from the official .deb.
# The previous apt-key method is intentionally not reproduced.
