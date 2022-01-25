---
layout: datasheet-base
title: SD-card deck
sku: 114990852
version: 2
status: active
---

{% datasheet_intro SD-deck-400px-3_1024x1024.jpeg; %}
Add the possibility to read and write files to a micro SD card. This could be used for
high speed logging or for storing configuration.
{% enddatasheet_intro %}

## Features

* Automatic detection of deck via 1-wire memory
* Micro SD card reader
* Support for FAT file system in the Crazyflie 2.X firmware

## Electrical specifications

It's possible to switch the pin used for SPI chip select using the solder bridges on the bottom
of the board. By defalult GS4 is used (IO4), but this line can be cut and another bridge
soldered to select another IO (IO1-3) for chip select.

{% datasheet_img Mechanical drawing; medium; center; sd-card-deck-alt-config.png; %}

## Mechanical specifications

* Weight: 1.7g
* Size (WxHxD): 21x28x4mm
* Designed for mounting above or under the Crazyflie 2.X

## Mechanical drawing

{% datasheet_img Mechanical drawing; medium; center; sd-card-deck-mechanics.png; %}

## Package contents

* 1 x SD-card deck

## Errata

### SPI bus limitations

#### Rev C

The SD-Card is using the SPI bus on the deck port to communicate. This has turned out to
have some implications for the other decks that use the SPI bus. The effected decks
are the *Loco positioning deck* and the *Flow v1/v2 deck*. An issue has been open
about it and currently we have no easy solution. One workaround is to use a “hidden”
SPI on the deck port that is multiplexed with TX1, RX1 and IO_4. This SPI port is called
SPI3 in the STM32F405 and after this commit there is a possibility to switch to this SPI bus.

The following steps can he used to work around this issue:

* First thing the SD-card deck needs to be patched. This is a quite hard to cut the
  small lines and solder small patch wires. Easier is to use a sd-card breakout deck
  such as this and solder wires to e.g. the battery holder board.
  * CS→RX2(PA3)
  * SCLK→TX1(PC10)
  * MISO→RX1(PC11)
  * MOSI→IO_4(PC12)
* Compile the firmware with ```CFLAGS += -DUSDDECK_USE_ALT_PINS_AND_SPI``` in your config.mk file.
* If you want to use the Loco-deck at the same time, the alternative pins for this must be used.
  This means cutting GS1 and GS2 underneeth the Loco positioing deck and soldering the bridged
  GS3 and GS4. Then add ```CFLAGS += -DLOCODECK_USE_ALT_PINS``` to you ```config.mk``` as well.

#### Rev D

This is **TODO**.

## Hardware revisions

| Revision | Comment |
| ------- | ------- |
| C | Initial release |
| D | Improved configuration options for pins used to interface micro-SD card |

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 1 | Initial release | 2020-04-01 |
| 2 | Updated with hardware revision D and fixed initial revision to C | 2021-01-25 |
