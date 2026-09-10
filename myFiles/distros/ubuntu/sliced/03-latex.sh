#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing LaTeX..."

sudo apt install -y \
    texlive-latex-base \
    texlive-fonts-extra

echo "==> Installing Pandoc..."
sudo apt install -y pandoc
