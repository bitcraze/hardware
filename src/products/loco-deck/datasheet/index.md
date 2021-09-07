---
layout: datasheet-base
title: Loco positioning deck
sku: 114990655
version: 1
status: active
---

{% datasheet_intro Loco-deck-400px-1_1024x1024.jpeg; %}
The Loco positioning Deck is a Tag in the Loco Positioning system and measures the distance to Anchors.
The distances are used to estimate the absolute position of the Crazyflie 2.X in the room, which
can be used for autonomous flight. To read more about the Loco positioning deck go to our website.
{% enddatasheet_intro %}

## Introduction

This product is intended to be used together with Loco Positioning Nodes and can not be used standalone.
For more information on the Loco Positioning System please see our Loco Positioning System page.

Specifications are based on the standard 2-way ranging mode.

## Features

* Measures distances to Loco Positioning Node Anchors
* 4 status LEDs

## Electrical specification

* Based on the Decawave DWM1000 module
* Implements IEEE 802.15.4 UWB
* 1-wire memory for automatic expansion deck detection
* Max 150 mA consumed, depends on operation mode and configuration
* Crazyflie 2.X flight time with deck 6 minutes

## Ranging specification

* Ranging accuracy ±10 cm according to DWM1000 spec
* Maximum tested range 10 m
* Ranging rate 500 Hz, shared over all anchors. Around 80Hz per anchor with 6 anchors

## Radio specification

* Operates at 3.2 - 7 GHz
* Channel bandwidth 500 MHz

## Mechanical specifications

* Weight: 3.3 g
* Size (WxHxD): 28x35x4 mm
* Designed for mounting above or under the Crazyflie 2.X

## Mechanical drawing

{% datasheet_img Mechanical drawing; medium; center; Loco-deck-measurements.png; %}

## Package contents

* 1 x Loco positioning deck

## Errata

## Hardware revisions

| Revision | Comment |
| ------- | ------- |
| D | Initial release |

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 1 | Initial release | 2020-03-31 |
