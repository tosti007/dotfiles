#!/bin/bash
# Copied and modified from /usr/share/doc/xss-lock/dim-screen.sh

# Brightness will be lowered to this value.
dim_brightness=1

get_brightness() {
	xbacklight -get
}

set_brightness() {
	xbacklight -set $@
}

trap "exit 0" TERM INT
trap "set_brightness $(get_brightness); kill %%" EXIT
set_brightness $dim_brightness
sleep infinity &
wait

