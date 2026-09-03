#!/usr/bin/env bash

# ============================================================
# CachyOS / Arch Linux - instalación inicial del sistema
#
# Uso:
#   chmod +x install.sh
#   ./install.sh
#
# El script puede ejecutarse de nuevo: pacman/yay usarán --needed
# para evitar reinstalar paquetes ya presentes.
# ============================================================

set -euo pipefail


# ------------------------------------------------------------
# Actualizar sistema
# ------------------------------------------------------------

echo "==> Actualizando el sistema..."

sudo pacman -Syu --noconfirm


# ------------------------------------------------------------
# Sistema básico
# ------------------------------------------------------------

echo "==> Instalando paquetes básicos..."

sudo pacman -S --needed --noconfirm \
    base-devel \
    git \
    yay \
    zotero \
    emacs \
    pandoc \
    texlive-meta \
    visidata \
    okular


# ------------------------------------------------------------
# R y herramientas de compilación
# ------------------------------------------------------------

echo "==> Instalando R y herramientas de compilación..."

sudo pacman -S --needed --noconfirm \
    r \
    gcc-fortran \
    cmake \
    pkgconf


# ------------------------------------------------------------
# GIS, datos espaciales y librerías científicas
# ------------------------------------------------------------

echo "==> Instalando herramientas científicas y GIS..."

sudo pacman -S --needed --noconfirm \
    arrow \
    qgis \
    gdal \
    geos \
    proj \
    sqlite \
    curl \
    openssl \
    libxml2 \
    hdf5 \
    netcdf \
    pdal \
    python-gdal \
    imagemagick


# ------------------------------------------------------------
# Impresoras y descubrimiento de red
# ------------------------------------------------------------

echo "==> Instalando soporte para impresoras..."

sudo pacman -S --needed --noconfirm \
    cups \
    system-config-printer \
    avahi \
    nss-mdns


# ------------------------------------------------------------
# Paquetes del AUR
# ------------------------------------------------------------

echo "==> Instalando paquetes del AUR..."

yay -S --needed --noconfirm \
    raindrop \
    udunits \
    jags


# ------------------------------------------------------------
# GRASS GIS
# ------------------------------------------------------------

# De momento solo buscar el paquete disponible.
# Cuando se decida cuál instalar, sustituir esto por:
#
#   yay -S --needed grass
#
# o el nombre correspondiente del paquete.

yay -Ss grass || true


# ------------------------------------------------------------
# Emacs
# ------------------------------------------------------------

echo "==> Instalando paquetes seleccionados de Emacs..."

# Los paquetes deben estar definidos previamente en
# `package-selected-packages` dentro de la configuración de Emacs.
#
# Por ejemplo:
#   ESS
#   Magit
#   pandoc-mode
#   modern-cv

emacs --batch \
    --eval "(require 'package)" \
    --eval "(package-refresh-contents)" \
    --eval "(package-install-selected-packages)"


# ------------------------------------------------------------
# Configuración del teclado
# ------------------------------------------------------------
#
#   setxkbmap -option ctrl:swapcaps
#
# En Wayland esta configuración no funciona de forma fiable mediante
# setxkbmap. El intercambio Caps Lock <-> Ctrl está configurado desde
# la interfaz gráfica de KDE/System Settings.


# ------------------------------------------------------------
# Servicios
# ------------------------------------------------------------

echo "==> Activando servicios..."

sudo systemctl enable --now cups.service
sudo systemctl enable --now avahi-daemon.service


# ------------------------------------------------------------
# Permisos de impresora
# ------------------------------------------------------------

echo "==> Añadiendo ${USER} al grupo lp..."

if ! id -nG "$USER" | grep -qw lp; then
    sudo usermod -aG lp "$USER"
    echo "    Usuario añadido al grupo lp."
    echo "    Será necesario cerrar sesión y volver a entrar."
else
    echo "    El usuario ya pertenece al grupo lp."
fi


# ------------------------------------------------------------
# Final
# ------------------------------------------------------------

echo
echo "============================================================"
echo " Instalación terminada"
echo "============================================================"

