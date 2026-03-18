#!/bin/sh
## rsync ~/TODO/phd.org ~/Dropbox/phd/phd.org
rsync    ~/.emacs ~/HOME-INST/CONF-FILES/current.emacs.el
rsync    ~/.Renviron ~/HOME-INST/CONF-FILES/current.Renviron.el
rsync -r ~/.emacs.d/ ~/HOME-INST/CONF-FILES/current.emacs.d/
rsync    ~/.bashrc ~/HOME-INST/CONF-FILES/current.bashrc
rsync    ~/.gitconfig ~/HOME-INST/CONF-FILES/current.gitconfig
rsync    ~/.profile ~/HOME-INST/CONF-FILES/current.profile
rsync    ~/.config/neowofetch/config.conf ~/HOME-INST/CONF-FILES/current.config.conf
