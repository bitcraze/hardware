---
layout: datasheet-base
title: Crazyflie Bolt
sku: 114991537
version: 3
status: early-access
---

{% datasheet_intro crazyflie_bolt_585px.jpg; %}
The Crazyflie Bolt is a Crazyflie 2.X compatible flight controller for brushless builds.
It is intended to have the strengths of the Crazyflie 2.1, but in a slightly bit bigger package.
It uses the same sensors as the Crazyflie 2.1 and the firmware binaries are compatible with both.
{% enddatasheet_intro %}

## Introduction

Using the Crazyflie bolt it possible to scale up your Crazyflie research or to build hetrogenius swarms.

## Features

* Firmware compatible with Crazyflie 2.1 and Crazyflie Bolt
* Supports expansion boards with automatic detection
* Integrated radio with dual antenna support (no firmware support yet)
* Wireless firmware updates
* Dual-MCU architecture with dedicated radio/power management SoC for advanced applications
* Real-time logging, graphing and variable setting in addition to full use of expansion boards when using a Crazyradio or Crazyradio PA and a computer
* Integrated power distribution (max 8A / motor)
* Low latency IMU connection
* Low power mode (down to 50uA) in sleep

## Onboard microcontrollers

* STM32F405 main application MCU (Cortex-M4, 168MHz, 192kb SRAM, 1Mb flash)
* nRF51822 radio and power management MCU (Cortex-M0, 32Mhz, 16kb SRAM, 128kb flash)
* micro-USB connector
* Full speed USB device interface
* Partial USB OTG capability (USB OTG present but no 5V output)
* 8KB EEPROM

## IMU specification

* 3 axis gyro (BMI088 connected via SPI)
* 3 axis accelerometer (BMI088 connected via SPI)
* high precision pressure sensor (BMP388)

## Radio specification

* 2.4GHz ISM band radio
* 20 dBm radio amplifier
* Bluetooth Low Energy support with iOS and Android clients available (tested on iOS 7.1+ and Android 4.4+)
* Dual antenna support (2 x uFL connector)

## Interface specification

* 1 x Full speed uUSB
* 2 x Crazyflie expansion connectors (see below)
* 2 x u.FL connectors
* 4 x ESC connectors using PWM / OneShot125 (JST-PH)
* 1 x XT30 battery connector

## Expansion connector specification

The expansion connector is used to attach decks with additional functionality. Either official Bitcraze decks
can be used or custom ones can be design using our KiCad template.

The expansion connector includes the following:

* VCC 3.0V (max 100mA)
* GND
* VCOM (if input above 5V, 5V@400mA, else VBAT@400mA)
* VUSB (both for input and output)
* I2C (400kHz)
* SPI
* 2 x UART
* 4 x GPIO/CS for SPI
* 1-wire bus for expansion identification
* 2 x GPIO connected to nRF51

Please note the following:

* The Crazyflie Bolt is a 3.0V system, meaning a high output will be 3.0V but still compatible with a 3.3V system.
* All IO pins are 5V tolerant except PA5 and the NRF51 pins
* The NRF51 pins can be multiplexed with any of the available NRF51 peripheral.
* The STM32F405RG pins can be multiplexed with more functions.

### Expansion connector multiplexing (same as CF2.1)

{% datasheet_img Mechanical drawing; large; center; crazyflie_2_1-deck-connector-multiplex.png; %}

## Connection diagram

Below is a connection diagram for how the motors should be connected:

{% datasheet_img Mechanical drawing; medium; center; crazyflie-bolt-wiring.png; %}

* To not exceed the 8A / ESC connector output the battery voltage, motor and propeller should be
selected so this does not happen. The ESC can be rated higher as it does not noticeably effect
current draw, only efficiency.
* Preferably select a frame so decks can be attached. It is hard to make e.g. the flow v2 deck
and lighthouse deck work at the same time as the battery needs to be placed somewhere, which is
normally in the center, above or below the Bolt control board.
* 4in1 ESCs can be convenient but for the Bolt it is often better to use 4 separate ESC
mounted on the arms as this frees up space for decks.
* If higher then 8A is wanted only connect the signal wires from the ESC connectors to the ESC.
Preferably still power the Bolt control board via the battery connector so the battery voltage can be monitored.

### Example connection

Below is an image of an example setup:

{% datasheet_img Mechanical drawing; medium; center; crazyflie-bolt-wiring-example.png; %}

### Power

The Bolt contains a power distribution board (PDB) but it is a bit limiting. The current has to pass a
MOSFET, to be able to switch it off, and also the ESC connector. We have tested running 8A though the
chain without any limiting heat-up, but that is as far as we would recommend to go. If additional current
is wanted, one could bypass the connectors by soldering the ESC directly to the connector soldering pad. 
The MOSFET is still there but a slight increase should be possible. For higher currents, an external PDB
should be used. Other tricks to keep current down, but power up, is to run on higher voltage (3S or 4S)
and using low KV motors.

## Electrical specifications

* Voltage input 1S-4S (3V to 17V)
* Onboard 5V DC/DC @500mA for voltages above 5V, else passthrough.
* Deep sleep consumption down to 50 uA, 2-4S, with 1S 1mA.

## Mechanical specifications

* PCBA size (WxHxD): 35x9x42mm (including connectors but not battery wire)
* Weight: 7.3 g (PCBA only), 9.2 g (PCB + battery cable)
* Battery cable length: 50 mm
* ESC cable length: 60 mm
* Antenna length: 150 mm
* Standard mounting (M3 mounting holes spaced 30.5 mm in square)

## Mechanical drawing

{% datasheet_img Mechanical drawing; large; center; crazyflie-bolt-mechanics.png; %}

## Caution

{% datasheet_notice warning; %}
**NOTE:** Remember that a bigger quadcopter can be dangerous! Always use adequate protection and
always test your code without propellers attached.
{% enddatasheet_notice %}

## Package contents

The Crazyflie Bolt is delivered as a kit that contains the following parts:

* 1 x Crazyflie Bolt control board
* 1 x Crazyflie Bolt (with battery cable attached)
* 1 x External antenna (with u.FL connector)
* 4 x ESC connector cables
* 2 x Short male deck connectors ([spare part](https://bitcraze.myshopify.com/collections/spare-parts-crazyflie-2-0/products/male-deck-connector))
* 2 x Long male deck connectors ([spare part](https://bitcraze.myshopify.com/collections/spare-parts-crazyflie-2-0/products/male-deck-connector))

## Errata

* When the Bolt is running on one cell battery (3-4.2V) the off current is higher than expected
and around 1mA.
Workaround: Unplug the battery when drones are not used and don’t just use the power off
button.
* When the Bolt is running on one cell battery (3-4.2V) don’t connect USB at the same time as
the battery as the USB is leaking current and charging the battery unintentionally which
potentially damages the battery after a while.
Workaround: Don’t have the battery and the USB connected at the same time.

## Hardware revisions

| Revision | Comment |
| ------- | ------- |
| F | Initial release |

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 1 | Initial release | 2020-04-07 |
| 2 | Changed layout | 2021-09-08 |
| 3 | Updated errata and dc/dc spec. | 2021-09-09 |
