# Reprap firmware on BTT skr 1.4

# The Basics

## Hardware used

BTT skr 1.4

![Reprap%20firmware%20on%20BTT%20skr%201%204%208b94bcdf3f714cb5a454ff1cb5d455d5/Untitled.png](Reprap%20firmware%20on%20BTT%20skr%201%204%208b94bcdf3f714cb5a454ff1cb5d455d5/Untitled.png)

[]()

BIGTREETECH RRF Wifi V1.0 Module

![Reprap%20firmware%20on%20BTT%20skr%201%204%208b94bcdf3f714cb5a454ff1cb5d455d5/Untitled%201.png](Reprap%20firmware%20on%20BTT%20skr%201%204%208b94bcdf3f714cb5a454ff1cb5d455d5/Untitled%201.png)

## Flash the wifi module

Start by uploading the binary image to the BTT RRF wifi module download:

[DuetWiFiServer-lpc-el.bin](https://github.com/valenti1234/skr1_4_reprap/blob/main/DuetWiFiServer-lpc-el.bin)

[ESP8266Flasher.exe](https://github.com/valenti1234/skr1_4_reprap/blob/main/ESP8266Flasher.exe)

Install and run the esp flasher prg connect the wifi module select the COM port.

![Reprap%20firmware%20on%20BTT%20skr%201%204%208b94bcdf3f714cb5a454ff1cb5d455d5/Untitled%202.png](Reprap%20firmware%20on%20BTT%20skr%201%204%208b94bcdf3f714cb5a454ff1cb5d455d5/Untitled%202.png)

select the file: DuetWiFiServer-lpc-el.bin

![Reprap%20firmware%20on%20BTT%20skr%201%204%208b94bcdf3f714cb5a454ff1cb5d455d5/Untitled%203.png](Reprap%20firmware%20on%20BTT%20skr%201%204%208b94bcdf3f714cb5a454ff1cb5d455d5/Untitled%203.png)

press and hold both RST+BOOT release RST and boot blue led flash blinking indicate that flashing operation has started if not try alternate buttons until blue led is blinking. wait for operation complete.

## Preparing SD card

download files from 

[valenti1234/skr1_4_reprap](https://github.com/valenti1234/skr1_4_reprap/tree/main/sd_card)

Copy the files in the root / of your SD card

[https://github.com/valenti1234/skr1_4_reprap/blob/main/DuetWiFiServer-lpc-el.bin](https://github.com/valenti1234/skr1_4_reprap/blob/main/DuetWiFiServer-lpc-el.bin)