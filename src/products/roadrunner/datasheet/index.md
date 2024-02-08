---
layout: datasheet-base
title: Roadrunner
sku: 800000001
version: 1
status: eol
---

{% datasheet_intro roadrunner_585px.jpg; %}
The Roadrunner is a Loco positioning compatible tag that combines the hardware of a Crazyflie with the UWB positioning of the Loco products in a handy package. It's ready for mounting on 3rd party robots and supports power supplies up to 12V. It can communicate through cable connection or via radio.
{% enddatasheet_intro %}

## Introduction

For more information on the Loco Positioning System please see the Loco Positioning System page on our website. Specifications are based on the standard 2-way ranging mode.

## Features

* Supports Tag mode
* Based on the Crazyflie hardware and uses same code-base as the Crazyflie
* 3-axis accelerometer / gyroscope
* Low latency 2.4 GHz radio that supports Bluetooth LE
* 5 - 12V power supply or micro-USB
* Data communication via USB, UART, low latency 2.4 GHz radio or Bluetooth LE
* Wireless firmware updates
* Supports Crazyflie expansion decks
* Supports Crazyflie libraries and clients

## Electrical specification

* Micro-USB connection for powering and full speed data communication
* 4 position locking connector with
* 5 - 12V power supply
* UART RX/TX for serial communication
* Power Consumption 240 mA (5V)

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

* The Roadrunner is a 3.0V system, meaning a high output will be 3.0V but still compatible with a 3.3V system.
* All IO pins are 5V tolerant except PA5 and the NRF51 pins
* The NRF51 pins can be multiplexed with any of the available NRF51 peripheral.
* The STM32F405RG pins can be multiplexed with more functions.

### Expansion connector multiplexing

{% datasheet_img Mechanical drawing; large; center; crazyflie_2_1-deck-connector-multiplex.png; %}

## Ranging specification

* Based on the Decawave DWM1000 module
* Implements IEEE 802.15.4 UWB
* Ranging accuracy ±10 cm according to DWM1000 spec. See the wiki for measurements.
* Maximum tested system range 10 m. The Decawave DWM1000 module is specified to 300 m.
* Nr of anchors required: theoretical minimum of 4 for 3D positioning. More anchors add redundancy and accuracy.

## Sensor specification

* 3 axis accelerometer / gyroscope (BMI088)

## Microcontroller specification

* STM32F405 main application MCU (Cortex-M4, 168MHz, 192kb SRAM, 1Mb flash)
* nRF51822 radio and power management MCU (Cortex-M0, 32Mhz, 16kb SRAM, 128kb flash)
* Full speed USB device interface
* Partial USB OTG capability (USB OTG present but no 5V output)
* 8KB EEPROM

## Radio specification

* UltraWide band radio
  * Operates at 3.2 - 7 GHz
  * Channel bandwidth 500 MHz
* 2.4 GHz radio
  * 20 dBm radio amplifier
  * Bluetooth Low Energy support with iOS and Android clients available (tested on iOS 7.1+ and Android 4.4+)
  * External antenna using U.FL connector

## Mechanical specifications

* Roadrunner PCBA
  * Weight: 9.6 g
  * Size (WxHxD): 35x11x77 mm
* Roadrunner PCBA with enclosure
  * Weight: 28.7 g
  * Size (WxHxD): 40x15x80 mm

## Mechanical drawing

{% datasheet_img Mechanical drawing; large; center; roadrunner-revb-mechanics.png; %}

| ID | Type | Description |
| -- | ---- | ----------- |
| 1 | Connector | Power and UART |
| 2 | Connector | Crazyflie 2.X expansion deck connector |
| 3 | Connector | SWD debug port (not mounted) |
| 4 | Button | ON/OFF/BOOTLOADER: Press and hold during startup to enable bootloader |
| 5 | Connector | UF.L 2.4Ghz antenna connector (for nRF) |
| 6 | LED | nRF51 controlled LEDs |
| 7 | LED | STM32 controlled LEDs |
| 8 | LED | DWM1000 controlled LEDs |
| 9 | Connector | Full-speed USB interface for STM32 |
| 10 | Mounting | M3 mounting holes used for enclosure |
| 11 | Connector | Extra 2.54mm spaced power connector (not mounted) |
| 12 | Connector | Extra 2.54mm spaced UART connector (not mounted) |

LED legend:

| LED | Color | Controlled by | Description |
| --- | ----- | ------------- | ----------- |
| D7 | Blue | nRF51 |  |
| D8 | Blue | nRF51 |  |
| D1 | Red | STM32 |  |
| D2 | Green | STM32 |  |
| D11 | Red | STM32 |  |
| D12 | Green | STM32 |  |
| TX | Red | DWM1000 | Transmitting |
| RX | Green | DWM1000 | Receiving |
| SFD | Yellow | DWM1000 | Received packet timestamp |
| RXOK | Red | DWM1000 | Packet received without error |

## Package contents

* 1 x Roadrunner PCBA
* 1 x Enclosure box and 2 x screws
* 2 x PCBA mounting screws
* 1 x U.FL antenna with adhesive for mounting inside the enclosure ([link](https://www.inventeksys.com/wifi/wi-fi-antennas/2-4ghz-pcb/))
* 1 x 4 position male connector with screw terminals ([datasheet](https://katalog.we-online.de/em/datasheet/6913611000xx.pdf))

## Errata

## Hardware revisions

| Revision | Comment |
| ------- | ------- |
| B | Initial release |

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 1 | Initial release | 2020-04-06 |
