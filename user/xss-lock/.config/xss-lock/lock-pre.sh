#!/bin/bash
# Run before starting the locker

dunstctl set-paused true

if [[ `spotify status` == 'Playing' ]]; then
	spotify pause
	touch /tmp/xss-lock_spotify_resume
fi

rbw lock

