---
layout: datasheet-base
title: Flow breakout board
sku: 114991252
version: 2
status: eol
---

{% datasheet_intro flow_breakout_585px-1.jpg; %}
The Flow breakout board is used for motion tracking and can easily be connected to any robotics
project or other design.
{% enddatasheet_intro %}

## Introduction

The motion of a surface, usually the ground, is measured and is reported as delta X, delta Y by
the optical flow sensor. The Z absolute distance is measured by the Time of Flight ranging sensor.
It comes with an Arduino library to easily read the movement data and has a large voltage range
for IO and power supply.

The Flow breakout features the VL53L0x ToF sensor and the PMW3901 optical flow sensor.

## Features

* Fast, accurate distance ranging
* Measures absolute range up to 2m
* Measures movement in X/Y using optical sensor
* Power supply and IO 3V - 5V compatible
* Arduino library for easy usage
* Minimum range for motion tracking is 80mm

## Electrical specification

* VL53L0x ToF sensor (I2C)
* PMW3901 optical flow sensor (SPI)
* VCC: 3V - 5V

* Compatible with 3 to 5V system (power and IO)
* Optical flow requires an SPI port
* ToF ranger requires an I2C port

## Interface specification

| Pin | Bus | Signal |
| --- | --- | ------ |
| 1 | Power | GND |
| 2 | Power | 3-5V |
| 3 | SPI | CS |
| 4 | SPI | MISO |
| 5 | SPI | CLK |
| 6 | SPI | MOSI |
| 7 | - | Motion IRQ |
| 8 | - | Reset (active low) |
| 9 | I2C | SCL |
| 10 | I2C | SDA |

## Mechanical specifications

* Weight: 2.7g
* Size (WxHxD): 20x26x4mm
* Two M2 mounting holes

## Mechanical drawing

{% datasheet_img Mechanical drawing; medium; center; flow-breakout-mechanics.png; %}

## Package contents

* 1 x Flow breakout
* 1 x 10 pins male header. Note! Due to a production problem some packages only contain a 4 pins male header.

## Errata

## Hardware revisions

| Revision | Comment |
| ------- | ------- |
| B | Initial release |

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 1 | Initial release | 2020-04-14 |
| 2 | Update status to EOL | 2022-03-14 |
