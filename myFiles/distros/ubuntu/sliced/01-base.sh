#!/usr/bin/env bash
set -euo pipefail

. /etc/os-release

if [[ "${ID}" != "ubuntu" ]]; then
    echo "This script is intended for Ubuntu."
    exit 1
fi

echo "==> Ubuntu ${VERSION_ID} (${VERSION_CODENAME})"

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

sudo apt install -y \
    build-essential \
    gcc \
    g++ \
    gfortran \
    make \
    cmake \
    pkg-config \
    git \
    gh \
    curl \
    wget \
    gnupg \
    ca-certificates \
    software-properties-common \
    dirmngr \
    cargo
