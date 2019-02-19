#!/bin/bash

############################################################
# IVC KOLPAK PROJECT
# (c) 2018-2019 Flangeneer
# Any questions ask in telegram group: @ivckolpak
# Saint-Petersburg, 2018-2019
############################################################

# Script sends photos as mediagroup

channel="photo"
param="/mnt/ramdisk/*.jpg"
path=/etc/ivc-kolpak/channels/${channel}/


estgb --weakconfig \
      --remove \
      --fileconfigs \
      --path $path \
      --mediagroup \
      --wildcard \
      --daemon \
      --singleton \
      --repeat-send 3 \
      --time-sleep 2 \
      --sendpic \
      "$param"

exit 0
