---
layout: datasheet-base
title: Crazyradio PA 2.4 GHz USB dongle
sku: 114990112
version: 3
status: active
---

{% datasheet_intro Radio-PA-2400px-5_1024x1024.jpeg; %}
Crazyradio PA is a long range open USB radio dongle based on the nRF24LU1+ from Nordic Semiconductor.
It features a 20dBm power amplifier, LNA and comes pre-programmed with Crazyflie compatible firmware.

The power amplifier boosts the range, giving a range of more than 1km (line of sight) together with
the Crazyflie 2.X and above 2km Crazyradio PA to Crazyradio PA (line of sight).

{% enddatasheet_intro %}

## Introduction

The Crazyradio PA is not only for usage together with the Crazyflie and Crazyflie 2.X. Since
it's an open project with firmware written from scratch and a Python API for usage it's great
building block for systems that require longer range than WiFi and doesn't have the same
requirements for bandwidth. The hardware comes shipped with the latest firmware as well as a
bootloader that enables firmware upgrades via USB without any additional hardware needed.

The Crazyflie PA is compatible with the first generation of the Crazyflie, but will not
give the same range increase as with the Crazyflie 2.X.

## Features

* Radio power amplifier giving 20dBm output power
* \> 1km range LOS with Crazyflie 2.X
* 2x5 2.54mm header for prototyping (not mounted)
* Hardware support for PPM
* Same mechanical footprint as the first generation Crazyradio
* Open source firmware
* Firmware upgrade via USB
* Low latency

## Electrical specification

* Based on nRF24LU1+ chip from Nordic Semiconductor
  * 8051 MCU at up to 16MHz with 16Kb or 32Kb flash and 2Kb SRAM
  * 2.4GHz ISM band radio
  * USB device peripheral
  * 125 radio channels
  * 2Mbps, 1Mbps and 250Kps communication data-rate
  * Sends and receives data packets of up to 32 bytes payload
  * Automatically handles addresses and packet ack
  * Hardware SPI and UART
  * Combatible with Enhanced ShockBurst protocol from Nordic Semiconductor
* Can be powered with up to 13V via expansion header
* 2x5 2.54mm expansion header with following signals (not mounted):
  * Hardware support for PPM input
  * Up to 13V input power
  * GND
  * PPM
  * SPI/UART
* Standard USB-A connector

## Radio specification

* Radio specification:
* 20dBm output power (100mW)
* Low Noise Amplifier (LNA)
* RP-SMA connector

## Mechanical specifications

* Weight: 6g
* Size (WxHxD): 58x16x6.5mm (including connectors)

## Mechanical drawing

{% datasheet_img Mechanical drawing; medium; center; crazyradio-pa-pcb-mechanics.png; %}

## Package contents

* 1 x Crazyradio PA
* 1 x Duck antenna 2dBi

## Errata
Due to component shortage 2022 only the 16kB flash version was sourcable (32kB not availible). It does not have any real implications as the FW only takes 6k + 2k bootloader. Crazyradio PA's manufactured with date code after 2022-06 will have the 16kB version. This can also be idetified on the chip marking. Locate the biggest chip that says NRF in the top. The 32kB version will say 24LU1P on the second row and the 16kB LU1P16.

## Hardware revisions

| Revision | Comment |
| ------- | ------- |
| C | Updated balun footprint |
| B | Initial release |

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 3 | Updated with 16kB version and added Errata | 2022-06-21 |
| 2 | Updated revision history | 2020-06-24 |
| 1 | Initial release | 2020-04-01 |
