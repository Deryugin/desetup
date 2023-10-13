function gb
	git branch | cut -c 3- | dmenu -l 40
end
