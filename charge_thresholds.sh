#!/bin/bash

# Lenovo Thinkpad Series

# Get current charge start threshold (in percent)
charge_start=$(cat /sys/class/power_supply/BAT0/charge_start_threshold)
echo "Current charge start threshold: $charge_start%"

# Get current charge end threshold (in percent)
charge_end=$(cat /sys/class/power_supply/BAT0/charge_end_threshold)
echo "Current charge end threshold: $charge_end%"

# Set new charge start threshold
echo "Enter new charge start threshold (numbers only, ie 75 to start charging at 75%):"
read new_start
echo $new_start > /sys/class/power_supply/BAT0/charge_start_threshold

# Set new charge end threshold
echo "Enter new charge end threshold (numbers only, ie 80 to stop charging at 80%):"
read new_end
echo $new_end > /sys/class/power_supply/BAT0/charge_control_end_threshold
