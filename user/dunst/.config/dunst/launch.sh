#!/bin/bash

pkill dunst

source "$HOME/.cache/wal/colors.sh"

dunst \
	-frame_color "${color0:-#000000}" \
	-lfr "${color0:-#000000}" \
	-nfr "${color0:-#000000}" \
	-cfr "${color0:-#000000}" \
	-lb "${background:-#000000}" \
	-nb "${background:-#000000}" \
	-cb "${background:-#000000}" \
	-lf "${foreground:-#ffffff}" \
	-nf "${foreground:-#ffffff}" \
	-cf "${foreground:-#ffffff}" \
	&

