#!/bin/bash

############################################################
# IVC KOLPAK PROJECT
# (c) 2018-2019 Flangeneer
# Any questions ask in telegram group: @ivckolpak
# Saint-Petersburg, 2018-2019
############################################################

# Script send system status in PNG-picture into telegram

filename="/mnt/ramdisk/cpu_status.png"
motion_status=$(service motion status | head -n 9)

info=$(echo -e && \
	echo "IVC KOLPAK v1.4 (c) 2018-2019 Flangeneer, telegram: @ivckolpak" && \
	echo "build: mainline, ramdisk 256M, native proxy, direct mpeg, x264 sw codec" && \
	echo -e && \
	uptime && \
	cat /sys/block/mmcblk0/stat | awk '{printf "Uptime read: %.3fMiB (%.1f%% I/Os merged) written: %.3f MiB (%.1f%% I/Os merged)\n", $3*512/1048576, $2/$1*100, $7*512/1048576, $6/$5*100}'
	echo -e && \
	echo CPU temp, *C: $(cat /etc/armbianmonitor/datasources/soctemp) | \
	sed 's/\([0-9][0-9][0-9]$\)/.\1/' && \
	echo -e && \
	free -h && \
	echo -e && \
	lsusb | grep -v Linux && \
	echo -e && \
	df -h | grep "29G\|cam1" && \
	echo -e && \
	ifconfig -s | grep -v lo && \
	echo -e && \
	ifconfig enx0c5b8f279a64 | grep "enx0c5b8f279a64\|TX packets\|RX packets" && \
	echo -e && \
	cat /var/lib/misc/dnsmasq.leases
	echo -e && \
	iw dev wlan0 station dump
	echo -e && \
	echo "$motion_status")

echo -e "$info" | \
	sed 's/\t/     /g' | \
        convert -background '#16499A' \
        -font DejaVu-Sans-Mono \
        -fill white \
        -pointsize 10 \
        label:@- \
        $filename

tgbotpic.sh "system" $filename

exit 0
