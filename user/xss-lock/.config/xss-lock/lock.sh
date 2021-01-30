#!/bin/bash
# Copied and modified from /usr/share/doc/xss-lock/transfer-sleep-lock-generic-delay.sh

# Run before starting the locker
pre_lock() {
	#spotify pause?
	return
}

# Do the actual locking
run_lock() {
	i3lock-script --nofork $@
}

# Run after the locker exits
post_lock() {
	return
}

pre_lock

# kill locker if we get killed
trap 'kill %%' TERM INT

if [[ -e /dev/fd/${XSS_SLEEP_LOCK_FD:--1} ]]; then
    # lock fd is open, make sure the locker does not inherit a copy
    run_lock $@ {XSS_SLEEP_LOCK_FD}<&- &

    # now close our fd (only remaining copy) to indicate we're ready to sleep
    exec {XSS_SLEEP_LOCK_FD}<&-
else
    run_lock $@ &
fi

wait # for locker to exit

post_lock

