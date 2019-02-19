#!/bin/bash

############################################################
# IVC KOLPAK PROJECT
# (c) 2018-2019 Flangeneer
# Any questions ask in telegram group: @ivckolpak
# Saint-Petersburg, 2018-2019
############################################################

# Script to encode video from motion
# using standard x264 library (software encoding)

input_name=$1
output_name=$2

ffmpeg -i $input_name \
	-filter:v scale=640:360 \
	-pix_fmt yuv420p -qp 20 -c:v libx264 -fs 10M -y \
	-nostats -loglevel 0 \
	-threads 2 \
	$output_name

rm -f $input_name

tgbotvideo.sh "video" $output_name "$3 $(basename $input_name)"
