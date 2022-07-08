---
layout: datasheet-base
title: SD-card deck
sku: 114990852
version: 3
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
have some implications for the other decks that use the SPI bus which limits the speed of logging. 
If higher speed is needed one workaround is to use a “hidden”
SPI on the deck port that is multiplexed with TX1, RX1 and IO_4. This SPI port is called
SPI3 in the STM32F405 and it is a possibile to switch to this SPI bus.

The following steps can be used to work around this issue:

* First thing the SD-card deck needs to be patched. This is a quite hard to cut the
  small lines and solder small patch wires. Easier is to use a sd-card breakout deck
  such as this and solder wires to e.g. the battery holder board.
  * CS→RX2(PA3)
  * SCLK→TX1(PC10)
  * MISO→RX1(PC11)
  * MOSI→IO_4(PC12)
* Then with `make menuconfig` enable `Expansion deck configuration -> Support for the Micro SD card deck ->  Use alternative SPI and alternative CS pin`.

#### Rev D

This revsion makes it easier to do the switch to SPI3 as described for Rev C. 
* On the bottom of the board cut bridges GS4, GS9, GS10 and GS11. 
  Then solder GS5, GS6, GS7 and GS8 (marked ALT.SPI)
* Then with `make menuconfig` enable `Expansion deck configuration -> Support for the Micro SD card deck ->  Use alternative SPI and alternative CS pin`.

#### Together with Loco deck
If you want to use the Loco-deck at the same time, the alternative pins is better to use as the SPI bus can get congested. This means cutting GS1 and GS2 underneeth the Loco positioing deck and soldering the bridged
GS3 and GS4. Then with `make menuconfig` enable `Expansion deck configuration -> Support the Loco positioning deck -> loco deck alternative IRQ and RESET pins`


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
| 3 | Updated Errata with new kbuild setup | 2022-07-08 |
