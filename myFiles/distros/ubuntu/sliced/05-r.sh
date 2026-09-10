#!/usr/bin/env bash
set -euo pipefail

. /etc/os-release
CODENAME="${VERSION_CODENAME}"

echo "==> Configuring CRAN repository..."

sudo mkdir -p /etc/apt/keyrings

wget -qO- \
    https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc \
    | gpg --dearmor \
    | sudo tee /etc/apt/keyrings/cran.gpg >/dev/null

cat <<EOF | sudo tee /etc/apt/sources.list.d/cran.sources >/dev/null
Types: deb
URIs: https://cloud.r-project.org/bin/linux/ubuntu
Suites: ${CODENAME}-cran40/
Components:
Signed-By: /etc/apt/keyrings/cran.gpg
EOF

sudo apt update

echo "==> Installing R..."
sudo apt install -y \
    r-base \
    r-base-dev
