#!/bin/bash
# Copied and modified from /usr/share/doc/xss-lock/transfer-sleep-lock-generic-delay.sh

cd "$(dirname "$0")"

# Do the actual locking
run_lock() {
	i3lock-script --nofork $@
}

./lock-pre.sh

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

./lock-post.sh

