#!/bin/bash

case "$1" in
change | start)
	echo hook:module/spotify2 >/tmp/polybar_mqueue_top
	;;
stop)
	# pause also implies stop, so let's ignore that
	;;
close)
	echo hook:module/spotify1 >/tmp/polybar_mqueue_top
	;;
esac

