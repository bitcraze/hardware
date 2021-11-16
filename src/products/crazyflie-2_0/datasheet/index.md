---
layout: datasheet-base
title: Crazyflie 2.0
sku: 110990440
version: 2
status: eol
---

{% datasheet_intro Crazyflie2.0-2400px-1_1024x1024.jpeg; %}
The Crazyflie 2.0 is a versatile open source flying development platform that only weighs 27g and fits in the palm of your hand.
{% enddatasheet_intro %}

## Introduction

Crazyflie 2.0 is equipped with low-latency/long-range radio as well as Bluetooth LE. This gives you the
option of downloading our app and using your mobile device as a controller or, in combination with the
Crazyradio PA, using your computer to display data and fly with a game controller. To read more about
the Crazyflie 2.0 go to our website.

## Features

* Durable design
* Easy to assemble and no soldering required
* Supports expansion boards with automatic detection
* Supports flying from iOS and Android with Bluetooth LE, as well as from Windows/Mac OSX/Linux with the Crazyradio or Crazyradio PA
* Tested to further than 1 km radio range line-of-sight (LOS) with the Crazyradio PA
* Wireless firmware updates
* On-board charging via standard uUSB
* Dual-MCU architecture with dedicated radio/power management SoC for advanced applications
* Real-time logging, graphing and variable setting in addition to full use of expansion boards when using a Crazyradio or Crazyradio PA and a computer

## Onboard microcontrollers

* STM32F405 main application MCU (Cortex-M4, 168MHz, 192kb SRAM, 1Mb flash)
* nRF51822 radio and power management MCU (Cortex-M0, 32Mhz, 16kb SRAM, 128kb flash)
* micro-USB connector
* On-board LiPo charger with 100mA, 500mA and 980mA modes available
* Full speed USB device interface
* Partial USB OTG capability (USB OTG present but no 5V output)
* 8KB EEPROM

## IMU specification

* 3 axis gyro (MPU-9250)
* 3 axis accelerometer (MPU-9250)
* 3 axis magnetometer (MPU-9250)
* high precision pressure sensor (LPS25H)

## Flight specifications

* Flight time with stock battery: 7 minutes
* Charging time with stock battery: 40 minutes
* Max recommended payload weight: 15 g

## Radio specification

* 2.4GHz ISM band radio
* 20 dBm radio amplifier tested to > 1 km range LOS with Crazyradio PA
* Bluetooth Low Energy support with iOS and Android clients available (tested on iOS 7.1+ and Android 4.4+)
* Radio backwards compatible with original Crazyflie Nano and Crazyradio

## Expansion connector specification

The expansion connector is used to attach decks with additional functionality. Either official Bitcraze decks
can be used or custom ones can be design using our KiCad template.

The expansion connector includes the following:

* VCC 3.0V (max 100mA)
* GND
* VCOM (unregulated VBAT or VUSB, max 1A)
* VUSB (both for input and output)
* I2C (400kHz)
* SPI
* 2 x UART
* 4 x GPIO/CS for SPI
* 1-wire bus for expansion identification
* 2 x GPIO connected to nRF51

Please note the following:

* The Crazyflie 2.0 is a 3.0V system, meaning a high output will be 3.0V but still compatible with a 3.3V system.
* All IO pins are 5V tolerant except PA5 and the NRF51 pins
* The NRF51 pins can be multiplexed with any of the available NRF51 peripheral.
* The STM32F405RG pins can be multiplexed with more functions.

### Expansion connector multiplexing

{% datasheet_img Mechanical drawing; large; center; crazyflie_2_1-deck-connector-multiplex.png; %}

## Mechanical specifications

* Takeoff weight: 27g
* Size (WxHxD): 92x92x29mm (motor-to-motor and including motor mount feet)

## Mechanical drawing

{% datasheet_img Mechanical drawing; medium; center; crazyflie-2_0-measurements.png; %}

## Package contents

The Crazyflie 2.0 is delivered as a kit that contains the following parts:

* 1 x Crazyflie 2.0 control board
* 1 x 240mAh LiPo battery ([spare part](https://bitcraze.myshopify.com/collections/spare-parts-crazyflie-2-0/products/240mah-lipo-battery-including-500ma-usb-charger))
* 5 x 7mm DC coreless motor (1 spare) ([spare part](https://bitcraze.myshopify.com/collections/spare-parts-crazyflie-2-0/products/4-x-7-mm-dc-motor-pack-for-crazyflie-2))
* 6 x 7mm motor mounts (2 spare) ([spare part](https://bitcraze.myshopify.com/collections/spare-parts-crazyflie-2-0/products/crazyflie-2-0-4-x-spare-7-mm-motor-mounts))
* 1 x Foam battery pad
* 5 x CCW propellers (3 spare) ([spare part](https://bitcraze.myshopify.com/collections/spare-parts/products/propeller-pack))
* 5 x CW propellers (3 spare) ([spare part](https://bitcraze.myshopify.com/collections/spare-parts/products/propeller-pack))
* 1 x Battery holder deck ([spare part](https://bitcraze.myshopify.com/collections/spare-parts-crazyflie-2-0/products/battery-holder-deck))
* 2 x Short male deck connectors ([spare part](https://bitcraze.myshopify.com/collections/spare-parts-crazyflie-2-0/products/male-deck-connector))
* 2 x Long male deck connectors ([spare part](https://bitcraze.myshopify.com/collections/spare-parts-crazyflie-2-0/products/male-deck-connector))

## Errata

## Hardware revisions

| Revision | Comment |
| ------- | ------- |
| F | Improved groundplane for noise rejection from motors |
| E | Added bandpass filter for 2.4 GHz antenna |
| D | Initial release |

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 1 | Initial release | 2020-04-06 |
| 2 | Corrected pin 0.11 and 0.12 location (swapped),<br /> renamed WKUP pin to N\_IO_2 | 2021-11-15 |
