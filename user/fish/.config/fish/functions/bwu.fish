function bwu
	if not bw status | rg '"status":"unlocked"' > /dev/null
		set -xU BW_SESSION (bw unlock --raw)
	end
end
