---
layout: datasheet-base
title: Flow deck v2
sku: 114991549
version: 1
status: active
---

{% datasheet_intro flow_deck_v2_585px.jpg; %}
The Flow deck gives the Crazyflie 2.X the ability to detect its motions in any direction.
The VL53L1x ToF sensor measures the distance to the ground with high precision and the PMW3901
optical flow sensor measures movements of the ground.
{% enddatasheet_intro %}

## Introduction

The Flow deck V2 creates a flying 3D robot that can be pre-programmed to fly distances in any
direction or act as an aid for beginners as it creates a very stable flying platform.

## Features

* Fast, accurate distance ranging
* Measures absolute range up to 4m
* Eye safe
* Measures horizontal movement
* Creates a 3D robot that can be pre-programmed
* Aided flight

## Electrical specification

* VL53L1x ToF sensor to measure distance up to 4 meters within a few millimeters (depending on surface and light conditions)
* 1-wire memory for automatic expansion deck detection
* PMW3901 optical flow sensor (works best on matt surfaces)

## Mechanical specifications

* Weight: 1.6g
* Size (WxHxD): 21x28x4mm
* Designed for mounting under the Crazyflie 2.X

## Mechanical drawing

{% datasheet_img Mechanical drawing; medium; center; flow-deck-v2-mechanics.png; %}

## Package contents

* 1 x Flock deck V2

## Errata

## Hardware revisions

| Revision | Comment |
| ------- | ------- |
| C | Initial release |

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 1 | Initial release | 2020-04-01 |
