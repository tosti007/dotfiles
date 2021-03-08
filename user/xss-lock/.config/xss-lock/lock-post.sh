#!/bin/bash
# Run before starting the locker

dunstctl set-paused false

if [ -f /tmp/xss-lock_spotify_resume ]; then
	spotify play
	rm /tmp/xss-lock_spotify_resume
fi

