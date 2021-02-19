#!/bin/bash
# Run before starting the locker

dunstctl set-paused true

if [[ `playerctl status` == 'Playing' ]]; then
	playerctl pause
	touch /tmp/xss-lock_playerctl_resume
fi

rbw lock

