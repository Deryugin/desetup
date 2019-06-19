#!/usr/bin/fish

function ecl
	if test -n "$argv[1]"
		set filter "$argv[1]"
	else
		set filter ""
	end

	set conf "confload-"(make confload | head -n -3 | sed 1,1d | grep $filter | dmenu -l 40 | tr -d ' ')
	echo $conf
	make $conf
end
