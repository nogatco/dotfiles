#!/bin/env sh
echo $1 | sudo tee /sys/class/backlight/intel_backlight/brightness
