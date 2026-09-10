#!/usr/bin/env bash
set -euo pipefail

. /etc/os-release
CODENAME="${VERSION_CODENAME}"

echo "==> Configuring QGIS repository..."

sudo mkdir -m755 -p /etc/apt/keyrings

sudo wget -qO /etc/apt/keyrings/qgis-archive-keyring.gpg \
    https://download.qgis.org/downloads/qgis-archive-keyring.gpg

cat <<EOF | sudo tee /etc/apt/sources.list.d/qgis.sources >/dev/null
Types: deb
URIs: https://qgis.org/debian
Suites: ${CODENAME}
Architectures: amd64
Components: main
Signed-By: /etc/apt/keyrings/qgis-archive-keyring.gpg
EOF

sudo apt update

echo "==> Installing QGIS..."
sudo apt install -y \
    qgis \
    qgis-plugin-grass

echo "==> Installing GDAL..."
sudo apt install -y \
    gdal-bin \
    libgdal-dev
