function bwl
	set -e BW_SESSION
	echo "" | xclip -selection clipboard -in
	bw lock
end
