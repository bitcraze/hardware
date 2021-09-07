---
layout: datasheet-base
title: AI-deck color camera module
sku: 800000003
version: 1
status: active
---

{% datasheet_intro 608H_A_585px.jpg; %}
The AI-deck color camera module is a color camera module, HM01B0-ANA, with a 320 x 320 resolution targeting computer vision applications from Himax. For full datasheet please contact Himax Technologies Inc.
{% enddatasheet_intro %}

## Introduction

The AI-deck color camera module is a color (Bayer RGB) camera module to exchange the monochrome camera module for, which comes with the AI-deck 1.1. This is handy if you want to work with color images (Bayer RGB).

## Sensor specification
The HM01B0 is an Ultra Low Power Image Sensor (ULPIS) that enables the integration of an “Always-on” camera for computer vision applications such as gestures, intelligent ambient light and proximity sensing, tracking and object identification. The unique architecture of the sensor enables the sensor to consume very low power of <4mW at QVGA 60FPS, <2mW at QVGA 30FPS, and <1.1mW at QQVGA 30FPS.

The HM01B0 contains 324 x 324 pixel resolutions and supports a 324 x 244 window mode which can be readout at a maximum frame rate of 60FPS, and a 2x2 monochrome binning mode with a maximum frame rate of 120FPS. The video data is transferred over a configurable 1-bit, 4-bit or 8-bit video interface with support for frame and line synchronization. The sensor integrates a black level calibration circuit, automatic exposure and gain control loop, self-oscillator and motion detection circuit with interrupt output to reduce host computation and commands to the sensor to optimize the system power consumption.

## Features

* Ultra Low Power Image Sensor designed for Always-on vision devices and applications
* High sensitivity 3.6μ BrightSense(TM) pixel technology
* 324 x 324 active pixel resolution with support for QVGA window, vertical flip and horizontal mirror readout
* <1.1mW QQVGA resolution at 30FPS, < 2mW QVGA resolution at 30FPS
* Programmable black level calibration target, frame size, frame rate, exposure, analog gain (up to 8x) and digital gain (up to 4x)
* Automatic exposure and gain control loop with support for 50Hz / 60Hz flicker avoidance
* Flexible 1-bit, 4-bit and 8-bit video data interface with video frame and line sync
* Motion Detection circuit with programmable ROI and detection threshold with digital output to serve as an interrupt
* On-chip self oscillator
* I2C 2-Wire serial interface for register access
* CSP and Bare Die sensor package option
* High CRA for low profile module design

## Camera specifications

* Electronic Rolling Shutter
* Pixel Array (Active/ Effective): 324 x 324 / 320 x 320
* Pixel Size: 3.6μm x 3.6μm
* Image Diagonal: 1.63mm
* Optical Format: Full frame 1/11”; QVGA 1/13”
* S/N Ratio max: 38.7dB
* Dynamic Range (1x / 8x): 64dB / 70dB
* Sensitivity @ 530nm: 5.6 V / Lux-sec
* Output Format: 6-bit / 8-bit RAW
* Temperature: Operating -20 °C to 85 °C, Stable Image 0 °C to 60 °C
* Focus distance: 35 cm
* Depth of Field: 30 cm ~ infinite
* Field of view: Horizontal 87°, Vertical 87°, Diagonal 115°

## Mechanical specifications

* Weight: 0.2g
* Size (WxHxD): 7.5x5x15mm
* Connector: Molex-503776-2410

## Mechanical drawing

{% datasheet_img Mechanical drawing; medium; center; ai-deck-color-camera-mechanics.png; %}

## Package contents

* 1 x Himax HM01B0-ANA color (Bayer RGB) camera module

## History

| Version | Comment | Date |
| ------- | ------- | ---- |
| 1 | Initial release | 2021-01-11 |
