#!/bin/sh
date >> ~/HOME-INST/backup.log
rsync -avzh ~/ /media/fer/FER/home 2>>  ~/HOME-INST/backup.log
# rsync -av /home/fer/phd /media/fer/Arce_Drive/backup_phd
# rsync -av /home/fer/Dropbox/phdD /media/fer/Arce_Drive/backup_phd 2>>  ~/phd/backup.log
