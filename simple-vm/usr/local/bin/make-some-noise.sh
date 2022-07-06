#!/bin/bash

while true; do
	sip-ping -addr udp://127.0.0.1:5060
	sleep .2
done
