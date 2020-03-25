---
layout: datasheet-base
title: BigQuad deck
sku: 102990227
version: 1
---

{% datasheet_intro products/big-quad-deck/datasheet/BigQuadDeck-4_1024x1024.jpg; %}
With the BigQuad deck you can transform your Crazyflie 2.X to a bigger quad by connecting external ESCs (Electronic Speed Controller) to the breakout connectors on the deck.
{% enddatasheet_intro %}

## Introduction

With the BigQuad deck you can transform your Crazyflie 2.X to a bigger quad by connecting external ESCs (Electronic Speed Controller) to the breakout connectors on the deck. The autodetection of the deck makes this transformation possible to do in seconds. The deck contains breakout header connectors for additional accessories such as external receiver (CPPM input) and GPS. It also has the possibility to monitor battery voltage and current.

## Features

* 4 x ESC connectors
* 0.1” header mounting holes for additional connectivity:
  * CPPM input (3 pin)
  * GPS input (4 pin)
  * I2C expansion  (4 pin)
  * Battery and current monitoring input (3 pin)
  * Buzzer output (2 pin)
* Connect one or two additional decks
* Automatic detection of expansion deck

## Electrical specification

* Power Crazyflie 2.X with 4.5V - 5.5V from ESC
* BiqQuad deck inputs are 5V tolerant
* Battery voltage monitoring divider scaled for input up to 23V
* Current monitoring input 0V - 3V
* BiqQuad deck and Crazyflie 2.X current consumption:
  * ~120mA without any additional decks
  * Up to 500mA if Crazyflie 2.X battery is connected and charging
* 1-wire memory for automatic expansion deck detection

## Pinout

| Connector | Pin | Signal |
| --------- | --- | ------ |
| GPS | 1 | GND |
| GPS | 2 | 5V |
| GPS | 3 | TX |
| GPS | 4 | RX |
| I2C | 1 | GND |
| I2C | 2 | 5V |
| I2C | 3 | SDA |
| I2C | 4 | SCL |
| CPPM | 1 | GND |
| CPPM | 2 | 5V |
| CPPM | 3 | signal |
| MON | 1 | GND |
| MON | 2 | VBAT |
| MON | 3 | current |

## Mechanical specifications

* Weight: 3.8g
* Size (WxHxD): 36x40x5mm
* M3 mounting holes placed 30.5mm square
* Designed for mounting above or under the Crazyflie 2.X

## Mechanical drawing

{% datasheet_img Mechanical drawing; big-quad-brd.png; %}

## Package contents

* 1 x BigQuad deck
* 4 x M2x4 nylon screw
* 2 x M2x6 hex spacer

## Errata

### Compatibility with Loco deck, microSD and Flow (v2) deck

The Loco deck, microSD and Flow (v2) deck all uses the SPI bus. As the BigQuad deck uses the deck SPI buss pins for possible voltage and current measurement, and they are multiplexed with analog input, the BigQuad deck is not out-of-the-box compatible with these decks.

To work around this issue do the following:

* By removing capacitor C1 on the BigQuad deck (see below)
* Not having BQ\_DECK\_ENABLE\_PM defined.
* Disabling the extRx functionality by commenting out extRxInit() in bigquad.c

{% datasheet_img Mechanical drawing; bigquaddeck-remove-c1.png; %}

Capacitor C1 is used to filter the current measurement and removing this has the effect that it will not be filtered any more. Still possible to use it if a deck using the SPI is not wanted any more.

To make it work with the Flow (v2) deck more changes/patching are needed:

* The Flow HW ChipSelect (IO3) interfere with BigQuad PWM and needs to be moved. Cut trace and solder patch on Flow deck from IO3 to IO1.
* Change the CS pin in flowdeck\_v1v2.c (IO3 → IO1)

Next problem is how to mount the deck in a nice way on the quad, we leave that up to you.

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 1 | Initial release | 2020-03-25 |
