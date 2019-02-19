#!/bin/bash

############################################################
# IVC KOLPAK PROJECT
# (c) 2018-2019 Flangeneer
# Any questions ask in telegram group: @ivckolpak
# Saint-Petersburg, 2018-2019
############################################################

# Place MAC addrs here. Several MACs should be delimited with \|
mac_filter="mac1\|mac2\|mac3"

# RUS: \xE2\x9C\x85\xF0\x9F\x8E\xA5 Камера АКТИВИРОВАНА. Утрачена связь с доверенным WiFi устройством.
msg_camera_on="\xE2\x9C\x85\xF0\x9F\x8E\xA5 Camera is ACTIVE. Lost connection with trusted WiFi device."

# RUS: \xF0\x9F\x9A\xAB\xF0\x9F\x8E\xA5 Камера ДЕАКТИВИРОВАНА. Обнаружено доверенное WiFi устройство.
msg_camera_off="\xF0\x9F\x9A\xAB\xF0\x9F\x8E\xA5 Camera DEACTIVATED. Found trusted WiFi device."

# RUS: \xE2\x9D\x8C Ошибка автоматической активации камеры! Следующая попытка включить камеру будет произведена через 1 минуту.
msg_camera_error="\xE2\x9D\x8C Camera activation ERROR. The next attempt to turn on the camera will be made in 1 minute."

s=$(iw dev wlan0 station dump | grep -c "$mac_filter")

motion_active=$(service motion status | grep -c "active (running)")

if [ "$s" -gt "0" ]
then
  if [ "$motion_active" -gt "0" ]
  then
  service motion stop
  tgbottext.sh "video" "$msg_camera_off"
  fi
else
  if [ "$motion_active" -eq "0" ]
  then
  service motion stop
  service motion start
  sleep 5
  motion_active=$(service motion status | grep -c "active (running)")
    if [ "$motion_active" -gt "0" ]
    then
    tgbottext.sh "video" "$msg_camera_on"
    else
    tgbottext.sh "video" "$msg_camera_error"
    fi
  fi
fi

exit 0
