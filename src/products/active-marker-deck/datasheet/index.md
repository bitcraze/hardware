---
layout: datasheet-base
title: Active marker deck
sku: 114992074
version: 2
status: active
---


{% datasheet_intro active-maker-front-1024px_1024x1024.jpg; %}
The active marker deck gives users robust and long range tracking using Qualisys QTM.
The deck supports up to 4 IDs so it's possible to have many different configurations
without having to carry around bulky spherical markers.
{% enddatasheet_intro %}

## Introduction

The pre-flashed firmware on the deck supporting Qualisys is closed source, but
the electronic design is open making it possible to adapt to other applications
and motion capture systems.

## Features

* Using Qualisys QTM
* Robust and long range tracking
* Supports up to 4 different marker IDs
* Generic mode (control intensity of each LED)
* Move an LED by cutting an arm and wiring it instead.

## Electrical specification

* STM32F031G6 MCU
* Receiving IR LED (38kHz carrier)
* 4 x high power IR LEDs (850 nm)
* SWD connector (compatible with Debug adapter)
* Compatible with Qualisys QTM V2019.3+

## Mechanical specifications

* Weight: 3.1 g
* Size (WxHxD): 75x75x5 mm
* Designed for mounting above the Crazyflie product family

## Mechanical drawing

{% datasheet_img Mechanical drawing; medium; center; active-marker-deck-mechanics.png; %}

## Package contents

* 1 x Active marker deck

## Errata

## Hardware revisions

| Revision | Comment |
| ------- | ------- |
| C | Initial release |

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 1 | Initial release | 2020-04-01 |
| 2 | Corrected STM32F031G6 part name | 2021-09-27 |
