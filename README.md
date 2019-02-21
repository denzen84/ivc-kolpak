# IVC KOLPAK - smart CCTV system powered with Telegram
## WARNING! REPOSITORY IS UNDER CONSTRUTION
This is template article. More information about the system and source codes to build from the scratch will be soon.
For any questions please ask in Telegram group `@ivckolpak`
## Overview
IVC KOLPAK is DIY smart CCTV system that alerts to Telegram if motion is detected in the camera area. This gives feature to reduce human attention for CCTV system and provides Internet traffic economy. It comprises the principles of simplicity and convenience, and low cost of ownership. It's best for far objects with rare motion events where only available 3G/4G Internet connection.
## Features
* CCTV with motion detection and alerts to Telegram
* Filtered content from CCTV. No need to revise recordings and archive - all information in the smartphone or PC
* Text, photo and video (animations) with motion object into Telegram chat, group or channel available 24/7
* WiFi hotspot service (used internal 3G/4G modem for Internet access)
* Automatic enable/disable CCTV when trusted device connected to WiFi hospot
* Periodical system reports about uptime, system life parameters, connected devices and other
* 2 week (or more) archive on SD card for archive purposes
###### Technical features
* Using _motion 4.2+_ feature _movie_passtrough_ allows to convert from mpeg to h264 videos direct from camera's stream. In case of use h264-camera no recompression needed.
* Ramdisk improves SD-card lifecycle
* Photos can be send as originals or as media groups.
* _estgb_ and _telebot_ library written in C. It works faster and consumpts less memory. 
* _estgb_ can process escape sequences to insert emoji in the text.
* _telebot_ library linked dynamically with _estgb_. Multiple instances of _estgb_ used less RAM.
* Expremental use of cedrus264 codec for hardware accelerated video encoding (with legacy kernel only).
## Why Telegram?
Using Telegram service providing following advantages, dramatically simplifies the device and reduces costs:
* Cloud storage for photos and videos in the chats, groups or channels. All information from the device will be kept in the Telegram's cloud. No need to make your own infrastructure or use other paid service.
* Access to Telegram from any device and platform even at the same time
* Simply to share photo and videos from the camera
* Telegram has an open API and protocol free for everyone (hey, Whatsapp and Viber!)
## Software
* Armbian ([external link](https://www.armbian.com/))
* motion ([external link](https://motion-project.github.io/))
* ffmpeg ([external link](https://ffmpeg.org/))
* enhanced sender telegram bot ([external link](https://github.com/denzen84/sstgb))
* several bash scrips: system report, archive cleanup, watchdog, on/off camera on trusted WiFi client, etc...
## Hardware
Hardware part consists of:
* Orange Pi board
* UVC USB camera (or any IPCam)
* SD Card
* High gain WiFi antenna
* Power supply 5V/2A (or 12V/1A with DC-DC converter)
* Box, cables, screws, nuts
## Bill of materials
###### IVC KOLPAK Gen1 with USB UVC Camera
| Pos # | Component | Q-ty  | Est. price | Link to shop |
| :---: |   :---    | :---: | ---:       | :---:         |
| 1 | Orange Pi Lite | 1 | US $12.00 | [AliExpress](https://ru.aliexpress.com/item/Orange-Pi-Lite-Support-ubuntu-linux-and-android-mini-PC-Beyond-and-Compatible-with-Raspberry/32662738571.html?spm=a2g0s.13010208.99999999.265.7a983c0025QaNK)|
| 2 | SD card 32G | 1 | US $4.99 | [AliExpress](https://ru.aliexpress.com/item/Memory-card-Micro-SD-memory-card-64GB-32GB-16GB-8GB-100-Genuine-class10-pass-h2test-TF/32461984660.html?spm=a2g0s.9042311.0.0.274233edu7irlG)|
| 3 | UVC USB Camera (OV2710 2MP 1080P HD) | 1 | US $20.00 | [AliExpress](https://ru.aliexpress.com/item/OV2710-2MP-1080P-HD-USB-100/32854297123.html?spm=a2g0s.13010208.99999999.259.7a983c0025QaNK)|
| 4 | WiFi antenna with pigtail | 1 | US $4.84 | [AliExpress](https://ru.aliexpress.com/item/WIFI-Antenna-2-4GHz-10dbi-with-RP-SMA-male-connector-for-wireless-router-IPX-to-RP/32773275868.html?spm=a2g0s.9042311.0.0.274233edkiRliO)|
| 5 | Power supply 5V/2A | 1 | US $1.61 | [AliExpress](https://ru.aliexpress.com/item/AC-100-265-V-DC-5-V-2A-TL431/32894346618.html?spm=a2g0s.9042311.0.0.274233edztReMy)|
| 6 | Short USB Cable for 3G/4G modem | 1 | US $0.52 | [AliExpress](https://ru.aliexpress.com/item/Short-USB-2-0-A-Female-To-A-Male-Extension-Cable-Cord/32735808067.html?spm=a2g0s.9042311.0.0.274233edztReMy)|
| 7 | Screws and nuts | 1 | US $4.68 | [AliExpress](https://ru.aliexpress.com/item/180-M2-M2-5-M3-spacer/32868329698.html?spm=a2g0s.9042311.0.0.274233edfVDtDB)|
| 8 | CPU and RAM  heatsinks | 1 | US $1.76 | [AliExpress](https://ru.aliexpress.com/item/30-Pcs-Adhesive-Raspberry-Pi-3-Heatsink-Cooler-Pure-Aluminum-Heat-Sink-Set-Kit-Radiator-For/32736671934.html?spm=a2g0s.9042311.0.0.274233edQOlzLf)|
| 9 | 3G/4G modem (any Huawei with HiLink firmware) | 1 | - | Local shop |
| 10 | Junction box | 1 | - | Local shop |
###### IVC KOLPAK Gen2 with XM H264 IP Camera (not tested yet)
| Pos # | Component | Q-ty  | Est. price | Link to shop |
| :---: |   :---    | :---: | ---:       | :---:         |
| 1 | Orange Pi Zero+ | 1 | US $14.90 | [AliExpress](https://ru.aliexpress.com/store/product/Orange-Pi-Zero-Plus-H5-Chip-Quad-Core-Open-source-Cortex-A53-512MB-development-board-beyond/1553371_32828347476.html?spm=a2g0v.12010612.8148356.4.369979abuQTklx)|
| 2 | SD card 32G | 1 | US $4.99 | [AliExpress](https://ru.aliexpress.com/item/Memory-card-Micro-SD-memory-card-64GB-32GB-16GB-8GB-100-Genuine-class10-pass-h2test-TF/32461984660.html?spm=a2g0s.9042311.0.0.274233edu7irlG)|
| 3 | XM H264 IP Camera | 1 | US $18.47 | [AliExpress](https://ru.aliexpress.com/store/product/AHWVE-DIY-1080P-2MP-IP-Camera-module-Board-with-IRCUT-RJ45-Cable-ONVIF-H264-Mobile-APP/700202_32855343611.html?spm=a2g0v.12010608.0.0.5f582df8Dd9xsx)|
| 4 | WiFi antenna with pigtail | 1 | US $4.84 | [AliExpress](https://ru.aliexpress.com/item/WIFI-Antenna-2-4GHz-10dbi-with-RP-SMA-male-connector-for-wireless-router-IPX-to-RP/32773275868.html?spm=a2g0s.9042311.0.0.274233edkiRliO)|
| 5 | Power supply 5V/2A | 1 | US $1.61 | [AliExpress](https://ru.aliexpress.com/item/AC-100-265-V-DC-5-V-2A-TL431/32894346618.html?spm=a2g0s.9042311.0.0.274233edztReMy)|
| 6 | Short USB Cable for 3G/4G modem | 1 | US $0.52 | [AliExpress](https://ru.aliexpress.com/item/Short-USB-2-0-A-Female-To-A-Male-Extension-Cable-Cord/32735808067.html?spm=a2g0s.9042311.0.0.274233edztReMy)|
| 7 | Screws and nuts | 1 | US $4.68 | [AliExpress](https://ru.aliexpress.com/item/180-M2-M2-5-M3-spacer/32868329698.html?spm=a2g0s.9042311.0.0.274233edfVDtDB)|
| 8 | CPU and RAM  heatsinks | 1 | US $1.76 | [AliExpress](https://ru.aliexpress.com/item/30-Pcs-Adhesive-Raspberry-Pi-3-Heatsink-Cooler-Pure-Aluminum-Heat-Sink-Set-Kit-Radiator-For/32736671934.html?spm=a2g0s.9042311.0.0.274233edQOlzLf)|
| 9 | 3G/4G modem (any Huawei with HiLink firmware) | 1 | - | Local shop |
| 10 | Junction box | 1 | - | Local shop |
## Pre-installed images
Pre-installed images (Armbian, motion, ImageMagick, estgb, WiFi Hotspot and scripts) are available for `Orange Pi Lite` (with H3 CPU) both for mainline kernel (Debian9) and experimental image with legacy kernel (Ubuntu Xenial) for cedrus264 test purposes. Ask for pre-installed images in Telegram group `@ivckolpak`.
## Building from the scratch
###### Step 1. Install OS and software
1. Download, burn, install Armbian according to [installation guide for Armbian](https://docs.armbian.com/User-Guide_Getting-Started/)
2. Build and install motion 4.2+ according to [abbreviated building guide](https://motion-project.github.io/motion_build.html)
4. Install from repository `ImageMagick`: `sudo apt-get install imagemagick`
5. Install from repository `libjson-c3`: `sudo apt-get install libjson-c3`
6. Install from repository `usb-modeswitch`: `sudo apt-get install usb-modeswitch`
7. Extract `ivc-kolpak` package from this repository into `/etc/ivc-kolpak`
###### Step 2. Create Telegram bot
1. Create your own telegram bot using `@BotFather` bot according to the [official guide](https://core.telegram.org/bots#6-botfather). Get `bot token`. 
2. Create 3 channels (or groups): Photo, Video and System. Get `id` for each channel (or group) using `@getidsbot`.
3. Add your new bot to the channels (or groups) as administrator.
###### Step 3. Configuring system
1. __Configure ramdisk__
     - Add into file `/etc/fstab` following line: `ramdisk /mnt/ramdisk tmpfs rw,size=256M 0 0`
2. __Configure WiFi hotspot__
     - Use `armbian-config` utility to configure WiFi hotspot
3. __Configure ImageMagick__
     - In the file `/etc/ImageMagick-6/policy.xml` find line `policy domain="path" rights="none" pattern="@*"/` and comment it like `<!-- policy domain="path" rights="none" pattern="@*"/ -->`
4. __Configure telegram bot__. 
     - Write `bot token` of your bot into files `.token` in paths `/etc/ivc-kolpak/channels/photo/`, `/etc/ivc-kolpak/channels/video/`, `/etc/ivc-kolpak/channels/system/`
     - Write `id` for each channel (or group) into files `.userid` in the same way as bot token.
5. __Make symlinks__
     - make symlinks for all scripts from `/etc/ivc-kolpak/scripts/` to `/usr/bin/`. Be sure that all scripts have permissions to execute.
     - make symlinks from `/etc/ivc-kolpak/motion/` to `/usr/bin/`.
     - make symlink for `/etc/ivc-kolpak/bin/telebot.so.0.5.0` to `/lib/`
     - make symlink for `/etc/ivc-kolpak/bin/estgb` to `/usr/bin/`. Be sure that `estgb` have permissions to execute.
6. __DOES ANYBODY WANT TO CREATE INSTALLATION SCRIPT? :)__
## Similar or related projects
* EN [Running a CCTV Telegram Bot on your Pi](https://heejune.me/2016/07/20/running-a-cctv-telegram-bot-on-your-pi/)
* EN [home surveillance monitored via telegram](http://ginolhac.github.io/posts/diy-raspberry-monitored-via-telegram/)
* EN [DIY real-time security camera with a Raspberry Pi & Telegram for $85 / Rs. 3000](http://shaanobee.blogspot.com/2015/10/diy-real-time-security-camera-with.html)
* EN [Development of Canny Home security system using Telegram application](http://www.ijritcc.org/download/conferences/NC-RISE_17/Track_2_(ENTC)/1506685325_29-09-2017.pdf)
* EN [IMPLEMENTATION OF A SMART SAFETY AND SECURITY
DEVICE USING RASPBERRY PI, TELEGRAM BOT, PROTA OS
AND MANYTHING WEB SERVICE](http://www.ijcea.com/wp-content/uploads/2018/03/27-Vinit-Jain.pdf)
* EN [Smart Surveillance System using Background
Subtraction Technique in IoT Application](http://thesai.org/Downloads/Volume9No12/Paper_18-Smart_Surveillance_System_using_Background.pdf)
* EN [Motion detection Telegram integrated](https://github.com/ttan/motion-detection-telegram)
* EN [This is telegram bot for posting jpg images from webcam with motion detection to telegram](https://github.com/sergeygalkin/cctv)
* EN [Telegram CCTV - turns your old android phone into a CCTV Camera using Telegram bot](https://www.reddit.com/r/TelegramBots/comments/936uo4/telegram_cctv_turns_your_old_android_phone_into_a/)
* RU [CCTV на коленке с уведомлением в Telegram](https://blog.sgalkin.info/2018/02/06/cctv-telegram/)
* RU [Телеграм-бот для домашнего видео-наблюдения из подручных материалов](https://habr.com/ru/post/341678/)
## Support
Telegram group `@ivckolpak` is provided for info and questions
