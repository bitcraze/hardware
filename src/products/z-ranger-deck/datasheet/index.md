---
layout: datasheet-base
title: Z-ranger deck
sku: 114991072
version: 1
status: eol
---

{% datasheet_intro z-ranger_deck_side_400px_1024x1024.jpeg; %}
The Z-ranger deck uses a laser sensor to measure the distance to the ground and adds
the possibility to fly with precise height control.
{% enddatasheet_intro %}

## Introduction

Using the ToF sensor VL53L0x the Crazyflie 2.X can measure the distance from
the sensor to a ground object at up two 2 meters.

## Features

* Fast, accurate distance ranging
* Measures absolute range up to 2m
* Eye safe

## Electrical specification

* VL53L0x ToF sensor to measure distance up to 2 meters within a few millimeters (depending on surface and light conditions).
* 1-wire memory for automatic expansion deck detection

## Mechanical specifications

* Weight: 1.6g
* Size (WxHxD): 21x28x4mm
* Designed for mounting under the Crazyflie 2.X

## Mechanical drawing

{% datasheet_img Mechanical drawing; medium; center; z-ranger-mechanical.png; %}

## Package contents

* 1 x Z-ranger deck

## Errata

## Hardware revisions

| Revision | Comment |
| ------- | ------- |
| B | Initial release |

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 1 | Initial release | 2020-04-01 |
