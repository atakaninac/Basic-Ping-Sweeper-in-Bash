#!/bin/bash

#Basic Ping Sweeping Script

read -p "Input your subnet: " SUBNET

for IP in $(seq 1 254); do
	ping -c 1 -W 1 $SUBNET.$IP > /dev/null 2>&1
	if [ $? -eq 0 ]; then
		echo "$SUBNET.$IP is active."
	else
		echo "$SUBNET.$IP is not responding."
	fi
done
