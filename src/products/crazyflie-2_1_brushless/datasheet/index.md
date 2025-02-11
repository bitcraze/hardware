---
layout: datasheet-base
title: Crazyflie 2.1 brushless
sku: 114993410
version: 3
status: active
---

{% datasheet_intro cf21bl-1024px.jpg; %}
The Crazyflie 2.1 Brushless brings added endurance, thrust and reliability to the Crazyflie 2.X development ecosystem. Together with an extensive package of software and deck expansions only your imagination sets the limit.
{% enddatasheet_intro %}

## Introduction

The Crazyflie 2.1 Brushless kit is a versatile open source flying development platform that only weighs 32g and fits in the palm of your hand. The brushless motors brings added agility and improved payload capabilities. It is equipped with low-latency radio as well as Bluetooth LE allowing for various control methods, including scripted and manual options. Custom designed low RPM propellers gives a pleasant noise as well as a high efficiency. 

## Features

* Fully compatible with the Crazyflie 2.X ecosystem (except LED-ring)
* Multiple position technology support
* Easy to assemble and no soldering required
* Supports expansion decks with automatic detection
* Wireless firmware updates
* On-board charging via standard uUSB or contact pads
* Open source software with extensive library support
* Swarm and ROS support
* Low latency radio with peer-two-peer functionality.
* Low noise flight

## Onboard microcontrollers

* STM32F405 main application MCU (Cortex-M4, 168MHz, 192kb SRAM, 1Mb flash)
* nRF51822 radio and power management MCU (Cortex-M0, 32Mhz, 16kb SRAM, 128kb flash)
* micro-USB connector
* On-board LiPo charger with 100mA, 500mA and 980mA modes available
* Full speed USB device interface
* Partial USB OTG capability (USB OTG present but no 5V output)
* 8KB EEPROM

## IMU specification

* 3 axis accelerometer / gyroscope (BMI088)
* High precision pressure sensor (BMP388)

## Flight specifications

* 4 x 08028-10000KV high-quality motors generating up to 30 grams thrust each
* 4 x integrated 1-cell 5A ESCs running BLHeli_S/Bluejay
* Custom-designed and optimized 55mm propellers with 35mm pitch
* Flight time with stock battery: 10 minutes
* Charging time with stock battery: 60 minutes
* Max recommended stock payload weight: 40 g

## Radio specification

* 2.4GHz ISM band radio
* Increased range with 20 dBm radio amplifier, tested to > 1 km range LOS with Crazyradio PA (environmentally dependent)
* Bluetooth Low Energy support
* Dual antenna support with both on board chip antenna and U.FL connector

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

* The Crazyflie 2.1 Brushless is a 3.0V system, meaning a high output will be 3.0V but still compatible with a 3.3V system.
* All IO pins are 5V tolerant except PA5 and the NRF51 pins
* The NRF51 pins can be multiplexed with any of the available NRF51 peripheral.
* The STM32F405RG pins can be multiplexed with more functions.

### Expansion connector multiplexing

{% datasheet_img Mechanical drawing; large; center; crazyflie_2_1-deck-connector-multiplex.png; %}

## Mechanical specifications

* Takeoff weight with legs: 34g 
* Takeoff weight with guards: 37g 
* Frame size: 100mm (diagonal motor center to motor center)

## Mechanical drawing

{% datasheet_img Mechanical drawing; medium; center; cf21bl_measurements.png; %}

## Package contents

The Crazyflie 2.1 Brushlessis delivered as a kit that contains the following parts:

* 1 x Crazyflie 2.1 brushless control board
* 1 x Foam battery pad
* 1 x 350mAh LiPo battery
* 4 x 08028-10000KV brushless motors
* 5 x Landing legs (1 spare)
* 5 x Propeller guards with legs (1 spare)
* 5 x CCW 55-35 propellers (3 spare)
* 5 x CW 55-35 propellers (3 spare)
* 1 x Battery holder deck
* 2 x Short male deck connectors
* 2 x Medium male deck connectors
* 1 x micro-USB cable (48cm)
* 1 x Tiny philips screw driver

## Errata

## Hardware revisions

| Revision | Comment |
| ------- | ------- |
| G | Initial release |

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 1 | Initial release | 2024-10-02 |
| 2 | Updated  weight and removed spare part links | 2024-12-09 |
| 3 | Added (except LED-ring) to features compatibility | 2025-01-11 |

