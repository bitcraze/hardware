---
layout: datasheet-base
title: 250mAh LiPo battery including 500mA USB charger
sku: 110060403
version: 2
status: active
---

{% datasheet_intro charger-battery-400px-1_1024x1024.jpg; %}
Use the Bitcraze battery charger to always have your spare batteries full to maximize your flight time.
{% enddatasheet_intro %}

## Introduction

If you’re a bit handy with a soldering iron you can even solder multiple chargers together for multi-battery charging.

## Features

* 500mA single-cell LiPo battery charger
* Charging indicator
* Connection points for chaining of multiple chargers
* 250mAh Li-Po battery (1 cell)

## Electrical specification

* Battery charger
  * Max charging current: 500mA
  * Supply voltage: 5V
  * micro-USB charging connector
  * Based on the MCP73832 single-cell Li-Po charger
  * Connection points allows chaining of multiple chargers (1x2, 2.54mm pitch)
* 250 LiPo battery
  * Capacity: 250mAh
  * Nominal voltage: 3.7 V (1 Cell)
  * Discharge: 15C
  * Charge: 2C
  * Operating Temperature: 0~45°C (Charging) / 0~60°C (Discharging)
  * Connector: Molex 51005-2P (Pin 1 positive)

## Mechanical specifications

* Battery charger
  * Weight: 1.2g
  * Size (WxHxD): 10.5x16x1.6mm (not including cable)
  * Connector for the Crazyflie 2.X stock battery
* 250 LiPo battery
  * Weight: 7.1g
  * Size (WxHxD): 20x7x30mm (not including cable)
  * Cable length: 20 mm

## Mechanical drawing

{% datasheet_img Mechanical drawing; medium; center; lipo-charger-mechanics.png; %}

## Package contents

* 1 x LiPo battery charger
* 1 x 250mAh LiPo battery

## Errata

## Hardware revisions

| Revision | Comment |
| ------- | ------- |
| A | Initial release |

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 1 | Initial release | 2020-05-14 |
| 2 | Corrected battery capacity from 240mAh to 250mAh and updated operating temperature  | 2021-02-24 |
