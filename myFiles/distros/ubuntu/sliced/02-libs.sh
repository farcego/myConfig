#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing development libraries..."

sudo apt install -y \
    zlib1g-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    libfontconfig1-dev \
    libxml2-dev \
    libharfbuzz-dev \
    libfribidi-dev \
    libfreetype6-dev \
    libpng-dev \
    libtiff-dev \
    libjpeg-dev \
    libblas-dev \
    liblapack-dev \
    libgsl-dev \
    libmagick++-dev \
    libavfilter-dev \
    libudunits2-dev
