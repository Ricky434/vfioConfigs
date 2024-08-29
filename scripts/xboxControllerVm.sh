#!/bin/bash
# --live: don't save in config, affects currently running vm
# --config: save in config, affects next startup
# --current: either live or config based on the vm state
# --persistent: same as --live --config (or just --config if vm is down)
# 
# The xml is just the copy paste of the xml that is shown in virtual machine manager
# by clicking on the attached usb device (just remember to change the usb port if you have
# more than one usb device you want to attach)

virsh --connect qemu:///system detach-device win11 --file AltreCose/vfio/devices/xboxController.xml --persistent
virsh --connect qemu:///system attach-device win11 --file AltreCose/vfio/devices/xboxController.xml --current
