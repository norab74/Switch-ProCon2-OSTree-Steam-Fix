#!/bin/bash
echo -e '\n SUBSYSTEM=="usb", ENV{DEVTYPE}=="usb_device", ATTRS{idVendor}=="057e", ATTRS{idProduct}=="2069", MODE="0660", TAG+="uaccess"' | tee -a /usr/lib/udev/rules.d/60-steam-input.rules
