function gd
	git status | grep "modified:" | awk '{ print $2; }' | dmenu -l 40 | xclip
end
