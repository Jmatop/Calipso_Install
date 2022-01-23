#!/usr/bin/env python
# -*- coding: utf-8 -*-
 
import sys
import RPi.GPIO as GPIO

print(sys.argv[1])


GPIO.setmode(GPIO.BOARD)
GPIO.setup(36, GPIO.OUT)
GPIO.output(36, GPIO.LOW)

if sys.argv[1] == "on" :
    GPIO.output(36,GPIO.HIGH)
else:
    GPIO.output(36,GPIO.LOW)

