#!/bin/bash

pkill dunst

source "$HOME/.cache/wal/colors.sh"

dunst \
	-frame_color "${background:-#000000}" \
	-lfr "${background:-#000000}" \
	-nfr "${background:-#000000}" \
	-cfr "${background:-#000000}" \
	-lb "${color0:-#000000}" \
	-nb "${color0:-#000000}" \
	-cb "${color0:-#000000}" \
	-lf "${foreground:-#ffffff}" \
	-nf "${foreground:-#ffffff}" \
	-cf "${foreground:-#ffffff}" \
	&

