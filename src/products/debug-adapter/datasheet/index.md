---
layout: datasheet-base
title: Debug adapter
sku: 114990118
version: 1
status: active
---

{% datasheet_intro debug-adapter-kit-400px-3_1024x1024.jpg; %}
This adapter is used to convert a number of standard connectors into the
debug connector that is used on Bitcraze products.
{% enddatasheet_intro %}

## Introduction

Due to the small size of our platform there are limitations
in what connectors we can have and therefore we designed a debug-adapter
kit that makes connecting a debugger to either of the MCUs a lot
easier, by converting the connector pinouts to standard JTAG and SWD
pinouts.

## Features

* Includes everything needed to easily debug the MCUs (STM32F4 and nRF51)
* Multiple debug pinouts supported (including 20-pin JTAG and 10-pin Cortex debug)

## Electrical specification

* Supported debugger pinouts:
  * Custom pinout that matches ST Discovery board debug interfaces (P5)
  * Standard Cortex SWV debug 2x6 1.27mm (50mil) SWV interface (P2)
  * Standard 2x10 2.54mm (100mil) JTAG interface (P4)
* Has reset button with jumper for reset support on either STM32F4 and nRF51 (SW1)
* Converts to the Bitcraze standard debug connector (P3)

{% datasheet_img Mechanical drawing; medium; center; debug-adapter-pinout.png; %}

## Package contents

* 1 x Crazyflie 2.X debug adapter
* 1 x nRF51 debug connector
* 1 x Nylon screw and nut for nRF51 debug connector
* 1 x 6-pin debug cable for connecting to the Crazyflie 2.X

## Errata

## Hardware revisions

| Revision | Comment |
| ------- | ------- |
| D | Initial release |

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 1 | Initial release | 2020-04-01 |
