#!/bin/bash

# First go to your /sys/class/backlight/radeon_b10/brightness and change permission

zero=115
time=$(date +%H)

if [[ $time -lt 6 && $time -gt 0 ]];then
	echo $zero > /sys/class/backlight/radeon_bl0/brightness 
elif [[ $time -gt 6 && $time -lt 12 ]];then
	echo $(($zero + 35)) > /sys/class/backlight/radeon_bl0/brightness 
elif [[ $time -gt 12 && $time -lt 18 ]];then
	echo $(($zero + 4*35)) > /sys/class/backlight/radeon_bl0/brightness 
else
	echo $(($zero + 3*35)) > /sys/class/backlight/radeon_bl0/brightness 

fi





