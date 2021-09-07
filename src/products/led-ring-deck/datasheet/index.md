---
layout: datasheet-base
title: LED-ring deck
sku: 114990114
version: 1
status: active
---

{% datasheet_intro Led-ring-deck-400px-1_1024x1024.jpg; %}
Light up the dark with custom patterns or get visual feedback using the Crazyflie LED-ring
deck. Featuring 12 strong RGB LEDs facing downwards, you can create custom patterns in firmware
that you control. Two additional strong front facing LEDs that can be switched on and off,
act as headlights.
{% enddatasheet_intro %}

## Introduction

Use the LED-ring deck to create visual effects or to give feedback from the firmware or
sensors. The LEDs can be programmed individually or pre-configured paterns/functions
can be selected.

## Features

* DC-DC step-up/down gives stable LED light independent of battery voltage
* Create custom patterns using the Crazyflie 2.X firmware
* 12 RGB LED modules facing downwards
* 2 strong LEDs facing forward
* Automatic detection of expansion board using 1-wire memory

## Electrical specification

* DC-DC step-up/down gives up to 1A at 3.8V from input between 2-5.5V
* 12 independently addressable RGB LED modules facing downwards (W2812B)
* 2 strong white LEDs facing forward, emitting more than 1800 mcd
* 1-wire memory for automatic expansion board detection
* Typical power consumption: 330mA @ 5.0V and 680mA @ 3.0V

## Mechanical specifications

* Weight: 3.3g
* Size (WxHxD): 33x33x5.5mm
* Designed for mounting under the Crazyflie facing downwards

## Mechanical drawing

{% datasheet_img Mechanical drawing; medium; center; led-ring-deck-mechanics.png; %}

## Package contents

* 1 x LED-ring deck

## Errata

## Hardware revisions

| Revision | Comment |
| ------- | ------- |
| B | Initial release |

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 1 | Initial release | 2020-04-01 |
