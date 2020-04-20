#!/bin/bash

us_map=$(setxkbmap -query | grep us,us)
if [ -z "$us_map" ]; then
	echo "ru->us" >> /tmp/log1;
	setxkbmap us,us -model pc104 -variant alt-int
else
	echo "us->ru" >> /tmp/log1;
	setxkbmap ru,us -model pc104 -variant alt-int
fi;

