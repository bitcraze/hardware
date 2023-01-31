---
layout: datasheet-base
title: Crazyradio 2.0
sku: 114993067
version: 1
status: active
---

{% datasheet_intro CR-2-0-1024px.jpg; %}
Crazyradio 2.0 is a long range open USB radio dongle based on the nRF52840 from Nordic Semiconductor, featuring a
20dBm power amplifier and LNA.
{% enddatasheet_intro %}

## Introduction

The Crazyradio 2.0 is not only for usage together with the Crazyflie family of devices, since
it's an open project with open firmware and a Python API, it's a great
building block for systems that require more predictable latency compared to WiFi and doesn't have the same
requirements for bandwidth. The hardware comes with a
bootloader that enables firmware upgrades via USB without any additional hardware needed.

The Crazyradio 2.0 is compatible with the Crazyflie eco system.

## Features

* Radio power amplifier giving 20dBm output power
* Open source firmware
* Firmware upgrade via USB
* Low latency

## Electrical specification

* Based on the nRF52840 chip from Nordic Semiconductor
  * Cortex-M4F processor at 64MHz with 1MB of flash and 256Kb of RAM
  * 2.4GHz ISM band radio
  * USB device peripheral
  * 100 radio channels
  * 1 Mbps, 2Mbps and long range (125kbps and 500kbps mode) Bluetooth® low energy modes
  * 250kbps IEEE 802.15.4 mode
  * 1Mbps and 2Mbps Nordic proprietary modes
* Extra signals available via soldering pads enabling custom expansions
  * 3 I/Os
  * GND
  * 3.15V out
  * 5V in
* Standard USB-A connector
* Programming connector

## Radio specification

* 20dBm output power (100mW)
* Low Noise Amplifier (LNA)
* RP-SMA connector

## Mechanical specifications

* Weight: 7g
* Size (WxHxD): 63x18x8mm (including connectors)

## Mechanical drawing

{% datasheet_img Mechanical drawing; medium; center; crazyradio_2_mechanics.png; %}

## Package contents

* 1 x Crazyradio 2.0
* 1 x Duck antenna 2dBi

## Errata

## Hardware revisions

| Revision | Comment         |
| -------- | --------------- |
| E        | Initial release |

## History

| Version | Comment         | Date       |
| ------- | --------------- | ---------- |
| 1       | Initial release | 2023-01-31 |
