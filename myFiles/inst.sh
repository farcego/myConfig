# Adaptar el laytout, cambiar Caps Lock, y hacer composite key right Ctrl se hace a mano despues

# ##############################################################################
# 
# First steps, compilators etc
# 
sudo apt-get update  -qq   -y
sudo apt-get upgrade -qq   -y
sudo apt-get autoremove    -y
sudo apt-get install gdebi -y
sudo apt-get install curl  -y
sudo apt-get install make  -y
sudo apt-get install gcc   -y
sudo apt-get install g++   -y
sudo apt-get install cargo -y
sudo apt-get update  -qq   -y
sudo apt-get upgrade -qq   -y
#
# ##############################################################################



# ##############################################################################
#
# MAIN DEPENDENCIES
#
sudo apt-get install zlib1g-dev           -y
sudo apt-get install libcurl4-openssl-dev -y
sudo apt-get install libssl-dev           -y
sudo apt-get install libfontconfig1-dev   -y
sudo apt-get install libxml2-dev          -y
sudo apt-get install libharfbuzz-dev      -y 
sudo apt-get install libfribidi-dev       -y
sudo apt-get install libfreetype6-dev     -y
sudo apt-get install libpng-dev           -y
sudo apt-get install libtiff5-dev         -y
sudo apt-get install libjpeg-dev          -y
sudo apt-get install libblas-dev          -y
sudo apt-get install liblapack-dev        -y
sudo apt-get install libgsl0-dev          -y
sudo apt-get update  -qq -y
sudo apt-get upgrade -qq -y
sudo apt-get install libssl-dev           -y
sudo apt-get install libfontconfig1-dev   -y
sudo apt-get install libxml2-dev          -y
sudo apt-get install libharfbuzz-dev      -y
sudo apt-get install libfribidi-dev       -y
sudo apt-get install libfreetype6-dev     -y
sudo apt-get install libpng-dev           -y
sudo apt-get install libtiff5-dev         -y
sudo apt-get install libjpeg-dev          -y
sudo apt-get install libgsl0-dev          -y
sudo apt-get install libmagick++-dev      -y
sudo apt-get install libavfilter-dev      -y
sudo apt-get install libudunits2-dev      -y
sudo apt-get install texlive-latex-base   -y
sudo apt-get install texlive-fonts-extra  -y
sudo apt-get update  -qq -y
sudo apt-get upgrade -qq -y
sudo apt-get clean       -y
sudo apt-get autoremove  -y
#
# ##############################################################################



# ##############################################################################
# 
# system utilities/software via apt-get
# 
sudo apt-get install gparted               -y
sudo apt-get install plocate               -y
sudo apt-get install lm-sensor             -y
sudo apt-get install htop                  -y
sudo apt-get install mdbtools              -y
sudo apt-get install pandoc                -y
sudo apt-get install imagemagick           -y
sudo apt-get install gh                    -y
sudo apt-get remove --purge libreoffice*   -y
sudo apt-get clean                         -y
sudo apt-get autoremove                    -y
sudo apt-get install libreoffice-draw      -y
sudo apt-get install gnome-control-center  -y
sudo apt-get install gnome-online-accounts -y
sudo apt-get install smartmontools         -y
#
# ##############################################################################



# ##############################################################################
# 
# Onlyoffice
# 
# wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb
# sudo apt install ./onlyoffice-desktopeditors_amd64.deb
# 
mkdir -p -m 700 ~/.gnupg
gpg --no-default-keyring --keyring gnupg-ring:/tmp/onlyoffice.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
chmod 644 /tmp/onlyoffice.gpg
sudo chown root:root /tmp/onlyoffice.gpg
sudo mv /tmp/onlyoffice.gpg /usr/share/keyrings/onlyoffice.gpg
echo 'deb [signed-by=/usr/share/keyrings/onlyoffice.gpg] https://download.onlyoffice.com/repo/debian squeeze main' | sudo tee -a /etc/apt/sources.list.d/onlyoffice.list
sudo apt-get update
sudo apt-get install onlyoffice-desktopeditors
# 
# ##############################################################################


# ############################################################################
# 
# BRAVE
# 
# brave-beta
sudo curl -fsSLo /usr/share/keyrings/brave-browser-beta-archive-keyring.gpg https://brave-browser-apt-beta.s3.brave.com/brave-browser-beta-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-beta-archive-keyring.gpg] https://brave-browser-apt-beta.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-beta.list
sudo apt update
sudo apt install brave-browser-beta
# brave-nightly
sudo curl -fsSLo /usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg https://brave-browser-apt-nightly.s3.brave.com/brave-browser-nightly-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg] https://brave-browser-apt-nightly.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-nightly.list
sudo apt update
sudo apt install brave-browser-nightly
#
# ############################################################################



# ############################################################################
# 
sudo apt-get update  -qq -y
sudo apt-get upgrade -qq -y
sudo apt-get clean       -y
sudo apt-get autoremove  -y
# 
# ############################################################################


# ############################################################################
# 
#  R installation
sudo apt install --no-install-recommends software-properties-common dirmngr -y
# Signing key (by Michael Rutter)
# To verify key, run gpg --show-keys /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc 
# Fingerprint: E298A3A825C0D65DFD57CBB651716619E084DAB9
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
# add the R 4.0 repo from CRAN -- adjust 'focal' to 'groovy' or 'bionic' as needed
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu noble-cran40/"
sudo apt-get update  -qq -y
sudo apt-get install r-base     -y
sudo apt-get install r-base-dev -y
#
# ############################################################################



# ############################################################################
#
# QGIS
# 
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update -qq -y
sudo apt-get install qgis qgis-plugin-grass
#
# Digikam
# 
sudo apt-get install digikam
#
# Zotero
# 
wget -qO- https://raw.githubusercontent.com/retorquere/zotero-deb/master/install.sh | sudo bash
sudo apt-get update
sudo apt-get install zotero
#
# zoom
# 
wget https://zoom.us/client/5.17.5.2543/zoom_amd64.deb
sudo apt-get install ./zoom_amd64.deb
#
# Teams
# 
wget -qO - https://packages.microsoft.com/keys/microsoft.asc| sudo apt-key add -
echo "deb https://packages.microsoft.com/repos/ms-teams stable main" | sudo tee /etc/apt/sources.list.d/teams.list
sudo apt-get update        -y
sudo apt-get install teams -y
# 
# ############################################################################







# pegar como hacer el onedrive...

# ?
# onedrive

# onedrive --synchronize
# systemctl --user enable onedrive
# systemctl --user start onedrive




# smart tools


## sudo snap install raindrop


# ###############################################################################
# 
# gdal
# 
sudo add-apt-repository ppa:ubuntugis/ppa -y
sudo apt-get update -qq -y
sudo apt-get install gdal-bin             -y
sudo apt-get install libgdal-dev          -y
# 
# opera
# 
sudo sh -c 'echo "deb http://deb.opera.com/opera/ stable non-free" >> /etc/apt/sources.list.d/opera.list'
sudo sh -c 'wget -O - http://deb.opera.com/archive.key | apt-key add -'
sudo apt update -qq -y
sudo apt install opera                    -y
# 
# google earth
# 
wget https://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb
sudo dpkg -i google-earth-stable*.deb     -y
sudo apt-get -f install                   -y
#
# ##############################################################################



# ##############################################################################
# 
# snaps
# 
# emacs
sudo snap install emacs --classic
# chatgpt
sudo snap install chatgpt-desktop
#
# ##############################################################################



# ##############################################################################
# 
# No longer in use or needed
# 
# # audacius download
# wget https://distfiles.audacious-media-player.org/audacious-4.4.1.tar.bz2
# # jopplin
# wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
# # gnome-boxes
# sudo apt install gnome-boxes
#
# git kraken
# wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
# ##############################################################################



# ##############################################################################
# 
# broken
# 
# # darktable
# ### Not installable
# echo 'deb http://download.opensuse.org/repositories/graphics:/darktable:/master/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/graphics:darktable:master.list
# curl -fsSL https://download.opensuse.org/repositories/graphics:darktable:master/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/graphics_darktable_master.gpg > /dev/null
# sudo apt update
# sudo apt install darktable
# # cambia las carpetas de destino
# # no funcionba, asi que lo comento
# sudo apt-get install dconf-editor
# change caps loc
# sudo apt-get install gnome-tweak-toolAngus henderson
#
# ##############################################################################
