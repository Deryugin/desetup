function gd
	git status | sed 's/both modified:/modified:' | grep "modified:" | awk '{ print $2; }' | dmenu -l 40 | tr -d '\n'
end
