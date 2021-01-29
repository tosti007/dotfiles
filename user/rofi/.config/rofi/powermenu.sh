#!/bin/bash

# Quit the script if any command fails
set -e

lock='Lock\0icon\x1fsystem-lock-screen'
suspend='Suspend\0icon\x1fsystem-suspend'
reboot='Reboot\0icon\x1fsystem-restart'
shutdown='Shutdown\0icon\x1fsystem-shutdown'

case "$1" in
'')
	echo -e "$shutdown"
	echo -e "$lock"
	echo -e "$reboot"
	echo -e "$suspend"
	;;
Lock)
	loginctl lock-session
	;;
Suspend)
	systemctl suspend
	;;
Reboot)
	reboot
	;;
Shutdown)
	poweroff
	;;
esac

