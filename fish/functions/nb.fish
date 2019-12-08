function nb
	# Newsboat can't run in multiple instances, so
	# we need to kill running processes before run
	killall newsboat; newsboat -r
end
