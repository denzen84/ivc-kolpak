#!/bin/bash

############################################################
# IVC KOLPAK PROJECT
# (c) 2018-2019 Flangeneer
# Any questions ask in telegram group: @ivckolpak
# Saint-Petersburg, 2018-2019
############################################################

# Script cleans ramdisk by cron event

find "/mnt/ramdisk/" -type f -mmin +120 -exec rm -rf {} \;

exit 0
