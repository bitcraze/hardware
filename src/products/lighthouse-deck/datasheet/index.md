---
layout: datasheet-base
title: Lighthouse positioning deck
sku: 114991751
version: 3
status: active
---

{% datasheet_intro lighthouse_lighthouse_deck.jpg; %}
Using the Lighthouse deck together with the HTC Vive basestations (aka Lighthouse) the
Crazyflie is able to acheive high precision positioning. This enables high precision flying
for autonomous flight and swarming at low cost.
{% enddatasheet_intro %}

## Introduction

The deck supports both Lighthouse V1 and V2 base stations. The position and pose is calculated
directly in the Crazyflie, which makes it possible to create fully autonomous systems without
external communication. The deck has 4 receivers which gives position and will in the future
also give pose of the Crazyflie.

## Features

* High accuracy positioning
* Supports HTC Vive Base Station
* HTC Vive Base Station 2.0 support in development, possible with firmware update
* On-board FPGA for signal processing with open source toolchain
* UART and I2C bootloader to program the FPGA configuration

## Electrical specification

* ICE40UP5K FPGA for signal processing
* 1-wire memory for automatic expansion deck detection
* 4 TS4231 IR receivers
* UART and I2C communication to Crazyflie deck expansion port
* UART pads available to solder a 2.54mm pin header for connection to external system, eg. Arduino (**NOTE** Max signal level 3V!)
* Typical current consumption 30mA

## Mechanical specifications

* Weight: 2.7g
* Size (WxHxD): 27x39x3.5mm
* Designed for mounting on top of the Crazyflie 2.x

## Mechanical drawing

### Rev D

{% datasheet_img Mechanical drawing; medium; center; lighthouse-deck-mechanics-front.png; %}

{% datasheet_img Mechanical drawing; medium; center; lighthouse-deck-mechanics-back.png; %}

### Rev D1

{% datasheet_img Mechanical drawing; medium; center; lighthouse-deck-mechanics-D1-front.png; %}

{% datasheet_img Mechanical drawing; medium; center; lighthouse-deck-mechanics-D1-back.png; %}

## Package contents

* 1 x Lighthouse positioning deck

## Errata

## Hardware revisions

| Revision | Comment |
| ------- | ------- |
| D | Initial release |
| D1 | Updated board outline |

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 1 | Initial release | 2020-04-01 |
| 2 | Changed state from Early access to Active | 2021-09-08 |
| 3 | Updated with Rev D1 board outline | 2022-02-17 |
