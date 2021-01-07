#!/bin/bash

set -e

case "$1" in
change | start)
	echo hook:module/spotify2 >/tmp/polybar_mqueue_top
	;;
stop)
	echo hook:module/spotify1 >/tmp/polybar_mqueue_top
	;;
esac

