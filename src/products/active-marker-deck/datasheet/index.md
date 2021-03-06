---
layout: datasheet-base
title: Active marker deck
sku: 114992074
version: 1
status: active
---

{% datasheet_intro products/active-marker-deck/datasheet/active-maker-front-1024px_1024x1024.jpg; %}
The active marker deck gives users robust and long range tracking using Qualisys QTM.
The deck supports up to 4 IDs so it's possible to have many different configurations
without having to carry around bulky spherical markers.
{% enddatasheet_intro %}

## Introduction

The pre-flashed firmware on the deck supporting Qualisys is closed source, but
the electronic design is open making it possible to adapt to other applications.

## Features

* Using Qualisys QTM
* Robust and long range tracking
* Supports up to 4 different marker IDs

## Electrical specification

* STM32F034G MCU
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
