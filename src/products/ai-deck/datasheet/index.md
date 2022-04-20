---
layout: datasheet-base
title: AI-deck
sku: 114991982
version: 3
status: active
---

{% datasheet_intro ai-deck-side-585px.jpg; %}
The AI-deck is built around the GAP8 RISC-V multi-core MCU build for AI on the edge purposes. Adding to this a QVGA Bayer RGB camera and a ESP32 WiFi MCU. This all together creates a pretty good platform to develop low power AI on the edge for a drone.

{% enddatasheet_intro %}

## Introduction

The AI-deck extends the computational capabilities with the GAP8 and will enable complex artificial intelligence-based workloads to run onboard with the possibility to achieve fully autonomous navigation capabilities. The ESP32 adds wifi connectivity with the possibility to stream images as well as handling control. This lightweight and lowpower combination we believe open up many research and development areas for the micro sized Crazyflie 2.X UAV.

## Features

* GAP8 – Ultra low power 8+1 core RISC-V MCU
* Himax HM01B0 – Ultra low power 320×320 Bayer RGB camera.
* 512 Mbit HyperFlash and 64 Mbit HyperRAM
* ESP32 for WiFi and more (NINA-W102)
* 2 x Cortex-M 10-pin JTAG for GAP8 and ESP32
* Button connected to ESP32 for UART bootloader or other action
* 1 x green LED connected to GAP8 (A2)
* 1 x green LED connected to ESP32 (GPIO_24)
* Can work stand alone. Power board on VCOM.

## Electrical specification

* Power supply 3V-5V @ VCOM up to 300mA
* 1-wire memory for automatic expansion board detection
* UART connected between GAP8 and Crazyflie (RX1, TX1)
* UART connected between ESP32 (RX2, TX2)
* ESP32 sysboot pin connected to Crazyflie (IO_1)
* Reset to GAP8 and ESP32 connected to Crazyflie (IO_4)
* SPI between GAP8 and ESP32
* GAP8 (B1) -> ESP32 (GPIO_5) io
* ESP32 (GPIO_25) -> GAP8 (A13) io

## Mechanical specifications

* Weight: 4.4g
* Size (WxHxD): 30x52x8mm
* Designed for mounting over/under the Crazyflie 2.X

## Mechanical drawing

{% datasheet_img Mechanical drawing; medium; center; ai-deck-mechanics.png; %}

## Package contents

* 1 x AI-deck
* 2 x Long pin headers

## Errata
* UART TX from GAP8 to Crazyflie does not work at the same time as using hyperflash. Pin multiplex problem. See GAP8 datasheet for possible workarounds.
* GAP8 (B1) is 1.8v pin and should only be used as output from GAP8 to NINA. No workaround.

## Hardware revisions

| Revision | Comment |
| ------- | ------- |
| C | Initial release |

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 1 | Initial release | 2020-05-14 |
| 2 | Changed to Bayer RGB camera | 2020-06-17 |
| 3 | Changed status to active | 2022-04-20 |
