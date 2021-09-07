---
layout: datasheet-base
title: Multi-ranger deck
sku: 114991485
version: 1
status: active
---

{% datasheet_intro multi-ranger_deck_1200px-1_1024x1024.jpg; %}
The multi-ranger deck gives the Crazyflie 2.X the ability to detect objects around it.
This is done by measuring the distance to objects in the following 5 directions:
front/back/left/right/up with mm precision up to 4 meters.

To get the most out of your Multi-ranger it should be paired with a Flow deck,
which will measure the movement along the ground and the distance to the ground.
{% enddatasheet_intro %}

## Introduction

The multi-ranger deck is equipped with 5 VL53L1x ToF sensors to measure the distance. Each of
the sensors are conneted to a GPIO extender that can individuall reset the sensors.

## Features

* Fast, accurate distance ranging
* Measures absolute range up to 4m in 5 directions
* Eye safe

## Electrical specification

* 5 x VL53L1x ToF sensor to measure distance up to 4 meters within a few millimeters (depending on surface and light conditions)
* PCA9534 I2C IO expander connected to resets of all
* 1-wire memory for automatic expansion deck detection

## Mechanical specifications

* Weight: 2.3g
* Size (WxHxD): 35x35x5mm
* Designed for mounting on top of the Crazyflie 2.X

## Mechanical drawing

{% datasheet_img Mechanical drawing; medium; center; multi-ranger-deck-mechanics.png; %}

## Package contents

* 1 x Multi-ranger deck

## Errata

## Hardware revisions

| Revision | Comment |
| ------- | ------- |
| E | Initial release |

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 1 | Initial release | 2020-04-01 |
