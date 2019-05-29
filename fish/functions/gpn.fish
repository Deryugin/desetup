function gpn
	set tmp (git rev-parse --abbrev-ref HEAD)
	git push -u origin $tmp
end
