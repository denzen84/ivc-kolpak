# IVC KOLPAK - smart CCTV system powered with Telegram
## WARNING! REPOSITORY IS UNDER CONSTRUTION
This is template article. More information about the system and source codes to build from the scratch will be soon.
For any questions please ask in Telegram channel `@ivckolpak`
## Overview
IVC KOLPAK is DIY smart CCTV system that alerts into Telegram if motion is detected in the camera area. It provides intelligent video control of the object, because only pictures (and video clips as 'gif' animated media) of motion object passes into Telegram chat, group or channel. This gives feature to reduce human attention for CCTV system and provides Internet traffic economy. It comprises the principles of simplicity and convenience, and low cost of ownership. It's best for far objects with rare motion events where only available 3G/4G Internet connection.
## Support
Telegram channel `@ivckolpak` is provided for info and questions
## Features
* CCTV with motion detection and alerts into Telegram
* Filtered content from CCTV. No need to revise recordings and archive - all information in the smartphone or PC
* Text, photo and video (animations) with motion object into Telegram chat, group or channel available 24/7
* WiFi hotspot service (used internal 3G/4G modem for Internet access)
* Automatic enable/disable CCTV when trusted device connected to WiFi hospot
* Periodical system reports about uptime, system life parameters, connected devices and other
* 2 week (or more) archive on SD card for archive purposes
## Advantages
Using Telegram service providing following advantages, dramatically simplifies the device and reduces costs:
* Cloud storage for photos and videos in the chats, groups or channels. All information from the device will be kept in the Telegram's cloud. No need to make your own infrastructure or use other paid service.
* Access to Telegram from any device and platform even at the same time
* Simply to share photo and videos from the camera
## Software
* Armbian ([external link](https://www.armbian.com/))
* motion ([external link](https://motion-project.github.io/))
* ffmpeg ([external link](https://ffmpeg.org/))
* enhanced sender telegram bot ([external link](https://github.com/denzen84/sstgb))
* Tor (option) ([external link](https://www.torproject.org/))
* several scrips
###### Hardware video compression acceleration (cedrus264)
Available, tested, but does not make sense in practice...
## Hardware
Hardware part consists of:
* Orange Pi board
* UVC USB camera (or any IPCam)
* SD Card
* High gain WiFi antenna
* Power supply 5V/2A (or 12V/1A with DC-DC converter)
* Box, cables, screws, nuts
## Bill of materials
###### Generation 1 - USB UVC Camera
| Pos # | Component | Q-ty  | Est. price | Link to shop |
| :---: |   :---    | :---: | ---:       | :---:         |
| 1 | Orange Pi Lite | 1 | US $12.00 | [AliExpress](https://ru.aliexpress.com/item/Orange-Pi-Lite-Support-ubuntu-linux-and-android-mini-PC-Beyond-and-Compatible-with-Raspberry/32662738571.html?spm=a2g0s.13010208.99999999.265.7a983c0025QaNK)|
| 2 | SD card 32G | 1 | US $4.99 | [AliExpress](https://ru.aliexpress.com/item/Memory-card-Micro-SD-memory-card-64GB-32GB-16GB-8GB-100-Genuine-class10-pass-h2test-TF/32461984660.html?spm=a2g0s.9042311.0.0.274233edu7irlG)|
| 3 | UVC USB Camera (OV2710 2MP 1080P HD) | 1 | US $20.00 | [AliExpress](https://ru.aliexpress.com/item/OV2710-2MP-1080P-HD-USB-100/32854297123.html?spm=a2g0s.13010208.99999999.259.7a983c0025QaNK)|
| 4 | WiFi antenna with pigtail | 1 | US $4.84 | [AliExpress](https://ru.aliexpress.com/item/WIFI-Antenna-2-4GHz-10dbi-with-RP-SMA-male-connector-for-wireless-router-IPX-to-RP/32773275868.html?spm=a2g0s.9042311.0.0.274233edkiRliO)|
| 5 | Power supply 5V/2A | 1 | US $1.61 | [AliExpress](https://ru.aliexpress.com/item/AC-100-265-V-DC-5-V-2A-TL431/32894346618.html?spm=a2g0s.9042311.0.0.274233edztReMy)|
| 6 | Short USB Cable for 3G/4G modem | 1 | US $0.52 | [AliExpress](https://ru.aliexpress.com/item/Short-USB-2-0-A-Female-To-A-Male-Extension-Cable-Cord/32735808067.html?spm=a2g0s.9042311.0.0.274233edztReMy)|
| 7 | Screws and nuts | 1 | US $4.68 | [AliExpress](https://ru.aliexpress.com/item/180-M2-M2-5-M3-spacer/32868329698.html?spm=a2g0s.9042311.0.0.274233edfVDtDB)|
| 8 | 3G/4G modem (any Huawei with HiLink firmware) | 1 | - | Local shop |
| 9 | Junction box | 1 | - | Local shop |
###### Generation 2 - XM H264 IP Camera
| Pos # | Component | Q-ty  | Est. price | Link to shop |
| :---: |   :---    | :---: | ---:       | :---:         |
| 1 | Orange Pi Zero+ | 1 | US $14.90 | [AliExpress](https://ru.aliexpress.com/store/product/Orange-Pi-Zero-Plus-H5-Chip-Quad-Core-Open-source-Cortex-A53-512MB-development-board-beyond/1553371_32828347476.html?spm=a2g0v.12010612.8148356.4.369979abuQTklx)|
| 2 | SD card 32G | 1 | US $4.99 | [AliExpress](https://ru.aliexpress.com/item/Memory-card-Micro-SD-memory-card-64GB-32GB-16GB-8GB-100-Genuine-class10-pass-h2test-TF/32461984660.html?spm=a2g0s.9042311.0.0.274233edu7irlG)|
| 3 | XM H264 IP Camera | 1 | US $18.47 | [AliExpress](https://ru.aliexpress.com/store/product/AHWVE-DIY-1080P-2MP-IP-Camera-module-Board-with-IRCUT-RJ45-Cable-ONVIF-H264-Mobile-APP/700202_32855343611.html?spm=a2g0v.12010608.0.0.5f582df8Dd9xsx)|
| 4 | WiFi antenna with pigtail | 1 | US $4.84 | [AliExpress](https://ru.aliexpress.com/item/WIFI-Antenna-2-4GHz-10dbi-with-RP-SMA-male-connector-for-wireless-router-IPX-to-RP/32773275868.html?spm=a2g0s.9042311.0.0.274233edkiRliO)|
| 5 | Power supply 5V/2A | 1 | US $1.61 | [AliExpress](https://ru.aliexpress.com/item/AC-100-265-V-DC-5-V-2A-TL431/32894346618.html?spm=a2g0s.9042311.0.0.274233edztReMy)|
| 6 | Short USB Cable for 3G/4G modem | 1 | US $0.52 | [AliExpress](https://ru.aliexpress.com/item/Short-USB-2-0-A-Female-To-A-Male-Extension-Cable-Cord/32735808067.html?spm=a2g0s.9042311.0.0.274233edztReMy)|
| 7 | Screws and nuts | 1 | US $4.68 | [AliExpress](https://ru.aliexpress.com/item/180-M2-M2-5-M3-spacer/32868329698.html?spm=a2g0s.9042311.0.0.274233edfVDtDB)|
| 8 | 3G/4G modem (any Huawei with HiLink firmware) | 1 | - | Local shop |
| 9 | Junction box | 1 | - | Local shop |
## Building from the scratch
