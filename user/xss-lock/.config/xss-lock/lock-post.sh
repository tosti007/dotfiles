#!/bin/bash
# Run before starting the locker

dunstctl set-paused false

if [ -f /tmp/xss-lock_playerctl_resume ]; then
	playerctl play
	rm /tmp/xss-lock_playerctl_resume
fi

